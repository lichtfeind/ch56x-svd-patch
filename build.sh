
#!/bin/bash

~/.local/bin/svd patch devices/ch569.yaml

svd2rust -g --target=riscv -i CH56Xxx.svd.patched
rm -rf ch569-rs

mkdir ch569-rs
form -i lib.rs -o ch569-rs/src/ && rm lib.rs
mv generic.rs ch569-rs/src/
mv build.rs ch569-rs/
mv device.x ch569-rs/
cp ch569-rs.toml ch569-rs/Cargo.toml

cd ch569-rs && cargo fmt
