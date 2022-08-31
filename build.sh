#!/bin/bash

set -e

~/.local/bin/svd patch devices/ch569.yaml

svd2rust -g --target=riscv -i CH56Xxx.svd.patched
rm -rf ch56x

mkdir ch56x
form -i lib.rs -o ch56x/src/ && rm lib.rs
mv generic.rs ch56x/src/
mv build.rs ch56x/
mv device.x ch56x/
cp ch569-rs.toml ch56x/Cargo.toml

cd ch56x && cargo fmt
