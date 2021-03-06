import sys
import json
import re
import os

from file_util import FileUtil

class GenerateAssets:
    def __init__(self, rootDir, version):
        self.ASSETS_FILENAME = rootDir + '/asm/assets/assets.s'
        self.ASSETS_DIR = rootDir + '/assets/' + version
        self.UCODE_DIR = rootDir + '/ucode/' + version
        self.UCODE_TEXT_FILENAME = rootDir + '/asm/assets/ucode_text.s'
        self.UCODE_DATA_FILENAME = rootDir + '/asm/assets/ucode_data.s'
        self.BUILD_DIR = rootDir + '/build/' + version
        
        self.generate_assets_file()
        self.generate_ucode_files()

    def generate_assets_file(self):
        with open(self.ASSETS_DIR + '/assets.json') as jsonFile:
            assetsJSON = json.load(jsonFile)
            assets = assetsJSON['assets']
            
            assetsTextFinal = '# This file was generated by generate_ld.py\n\n'
            assetsTextFinal += '.include "globals.inc"\n.include "macros.inc"\n\n'
            
            assetsText = 'glabel ASSETS_START\n\n'
            
            assetSectionTexts = [''] * len(assets)
            
            numAssets = len(assets)
            self.numAssets = numAssets
            
            for i in range(0, numAssets):
                assetSectionTexts[i] = 'glabel ASSET_SECTION_' + str(i) + '\n'
            for i in range(0, numAssets):
                assetType = assets[i]['type']
                if assetType == 'Table':
                    continue
                if assetType == 'Empty':
                    assetSectionTexts[i] += '# Empty\n'
                    if 'table' in assets[i]:
                        tableIndex = assets[i]['table']
                        assetSectionTexts[tableIndex] += '# Empty table\n'
                        assetSectionTexts[tableIndex] += '.word ASSET_SECTION_' + str(i) + '_END - ASSET_SECTION_' + str(i) + '\n'
                        assetSectionTexts[tableIndex] += '.word 0xFFFFFFFF\n'
                    continue
                
                folder = self.BUILD_DIR + '/' + assets[i]['folder']
                
                numFiles = len(assets[i]['filenames'])
                for j in range(0, numFiles):
                    assetSectionTexts[i] += 'glabel ASSET_' + str(i) + '_' + str(j) + '\n'
                    filename = folder + '/' + assets[i]['filenames'][j]
                    if not filename.endswith('.bin'):
                        filename = os.path.splitext(filename)[0] + '.bin'
                    assetSectionTexts[i] += '.incbin "' + filename + '"\n'
                    
                if 'table' in assets[i]:
                    assetSectionTexts[assets[i]['table']] += self.generate_asset_table(i, assets[i], assetType, numFiles)
            for i in range(0, numAssets):
                assetSectionTexts[i] += 'glabel ASSET_SECTION_' + str(i) + '_END\n'
                
            for assetSectionText in assetSectionTexts:
                assetsText += '.balign 16\n' + assetSectionText + '\n'
                
            assetsText += '.balign 16\nglabel ASSETS_END\n'
                
            assetsTextFinal += '.word ' + str(numAssets) + ' # Number of asset sections \n'
            for i in range(0, numAssets):
                assetsTextFinal += '.word ASSET_SECTION_' + str(i) + ' - ASSETS_START\n'
            assetsTextFinal += '.word ASSETS_END - ASSETS_START\n\n'
            assetsTextFinal += assetsText
            
            with open(self.ASSETS_FILENAME, "w") as assetsFile:
                assetsFile.write(assetsTextFinal)
        
    def generate_asset_table(self, i, asset, assetType, numFiles):
        outText = ''
        if assetType == 'TTGhosts':
            for j in range(0, numFiles):
                outText += '.word 0x{:02X}{:02X}0000, '.format(asset['meta'][j]['levelID'], asset['meta'][j]['vehicleID'])
                outText += 'ASSET_' + str(i) + '_' + str(j) + ' - ASSET_SECTION_' + str(i) + '\n'
            outText += '.word 0xFFFF0000, ASSET_SECTION_' + str(i) + '_END - ASSET_SECTION_' + str(i) + '\n'
            outText += '.word 0xFFFF0000, 0xFFFFFFFF\n'
        else:
            if assetType == 'MenuText':
                outText += '.word ' + str(asset['text-entry-count']) + '# Number of text entries for each language\n'
            for j in range(0, numFiles):
                if j == 0 and assetType == 'Audio':
                    continue # The audio table skips the first entry (for some odd reason)
                difference = 'ASSET_' + str(i) + '_' + str(j) + ' - ASSET_SECTION_' + str(i)
                if assetType == 'GameText' and asset['textTypes'][j] == 1:
                    outText += '.word (' + difference + ') | 0x80000000\n'
                elif assetType == 'Miscellaneous':
                    outText += '.word (' + difference + ') / 4\n'
                else:
                    outText += '.word ' + difference + '\n'
            if assetType == 'Miscellaneous':
                outText += '.word (ASSET_SECTION_' + str(i) + '_END - ASSET_SECTION_' + str(i) + ') / 4\n'
            else:
                outText += '.word ASSET_SECTION_' + str(i) + '_END - ASSET_SECTION_' + str(i) + '\n'
            outText += '.word 0xFFFFFFFF\n'
        return outText

    # Note: I am assuming that the order of microcodes did not change between versions.
    # TODO: Will probably need to refactor this later.
    def generate_ucode_files(self):
        assetsUCodeText = '# This file was generated by generate_ld.py\n\n'
        assetsUCodeText += '.incbin "' + self.BUILD_DIR + '/ucode/ucode_unknown.bin"\n'
        assetsUCodeText += '.incbin "' + self.BUILD_DIR + '/ucode/ucode_boot.bin"\n'
        assetsUCodeText += '.incbin "' + self.BUILD_DIR + '/ucode/ucode_f3ddkr_dram.bin"\n'
        assetsUCodeText += '.incbin "' + self.BUILD_DIR + '/ucode/ucode_f3ddkr_fifo.bin"\n'
        assetsUCodeText += '.incbin "' + self.BUILD_DIR + '/ucode/ucode_f3ddkr_xbus.bin"\n'
        assetsUCodeText += '.incbin "' + self.BUILD_DIR + '/ucode/ucode_unknown_2.bin"\n'
        with open(self.UCODE_TEXT_FILENAME, "w") as assetsFile:
            assetsFile.write(assetsUCodeText)
        
        assetsUCodeData = '# This file was generated by generate_ld.py\n\n'
        assetsUCodeData += '.incbin "' + self.BUILD_DIR + '/ucode/data_f3ddkr_dram.bin"\n'
        assetsUCodeData += '.incbin "' + self.BUILD_DIR + '/ucode/data_f3ddkr_fifo.bin"\n'
        assetsUCodeData += '.incbin "' + self.BUILD_DIR + '/ucode/data_f3ddkr_xbus.bin"\n'
        assetsUCodeData += '.incbin "' + self.BUILD_DIR + '/ucode/data_unknown.bin"\n'
        with open(self.UCODE_DATA_FILENAME, "w") as assetsFile:
            assetsFile.write(assetsUCodeData)
