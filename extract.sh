echo 'Extracting Assets...'

# Remove assets directory if it exists.
ASSETS_DIR="./assets/"
if [ -d "$ASSETS_DIR" ]; then
    rm -r $ASSETS_DIR
fi

if ! ./tools/dkr_extractor ./extract-ver ./baseroms .; then
    exit 1
fi

# Generate the linker file (dkr.ld)
python3 ./tools/python/generate_ld.py

exit 0