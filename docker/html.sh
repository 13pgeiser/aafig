#!/bin/bash
set -ex
cd /mnt/dist
find . -type f -printf '[%P](%p)  \n' >index.md
python -m markdown2 index.md >index.html
