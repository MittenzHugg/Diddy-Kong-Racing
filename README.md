# Diddy Kong Racing

This repo contains a work-in-progress decompilation of Diddy Kong Racing for the N64. You will need to have a original copy of the ROM to extract the game's assets.

Currently, only the US 1.0 version of the game is supported. US 1.1, EU 1.0, EU 1.1, and JP are not supported at this time.

---

## Dependencies

* `gcc`
* `make`
* `python3 (latest version)`
* `binutils-mips`
* `libssl-dev`

### Debian / Ubuntu

`sudo apt install build-essential pkg-config git binutils-mips-linux-gnu python3 libssl-dev wget`

## Setup / Building
1. Install the dependencies
2. Place the ROM file within the `baseroms` directory.  
    **a.** Any DKR ROM should work as long as it is US 1.0.  
    **b.** The name of the ROM file does not matter. It will be detected automatically from an md5 checksum.  
    **c.** If you use a byte-swapped or little-endian ROM, then it will automatically be converted to a big-endian (.z64) ROM file.  
3. Run `make` in the main directory.  
    **a.** Use the `-jN` argument to use `N` number of threads to speed up building. For example, if you have a system with 4 cores / 4 threads, you should do `make -j4`.

## Scripts

There are some useful scripts that should be kept in mind when working on this repo.

---

#### `./extract.sh <version>`

This script will extract all the assets from a DKR ROM and place them into `/assets/` folder according to the config file within the `/extract-ver/` folder. The version parameter should either be `us_1.0`, `us_1.1`, `eu_1.0`, `eu_1.1`, or `jp`.

---

#### `./rename_sym.sh <old_symbol> <new_symbol>`

This script will rename an existing symbol within the repo with a new one.

Example: `./rename_sym.sh D_A4001000 SP_IMEM`

---

#### `./score.sh`

Prints out the current completion percentage of the decomp. You do need to have an `OK` build for this to work properly.

---

#### `./get_symbol.sh <ram_address>`

Will return the symbol associated with the RAM address within `undefined_syms.txt`. The RAM address must be in base 16. The `0x` prefix is not required.

Example: 
```
./get_symbol.sh 0xA4001000
0xA4001000 = SP_IMEM
```

---

## TODO list

TODO: Add more things to the TODO list.

### Major

What should be focused on.

* Decompiling the asm files into matching c files.

### Minor

What can be done, but not essential.

* Figuring out the formats for the assets in the /assets/ folder.

### Future

These features won't be complete anytime soon.

* Make the ROM fully shiftable.
* Add support for the other 4 versions.
