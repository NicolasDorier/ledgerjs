# Run first this to install deps in cache
docker build -t builder/ledgerjs .; docker run --rm -v "$(pwd)/dist:/dist" -ti builder/ledgerjs;
