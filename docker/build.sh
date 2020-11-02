#!/bin/bash
set -ex
cd /mnt
python3 -m pip wheel . -w dist

