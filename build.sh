
#!/bin/bash

~/.local/bin/svd patch devices/ch569.yaml

svd2rust -g --target=riscv -i CH56Xxx.svd.patched
rm -rf src
form -i lib.rs -o src/ && rm lib.rs
mv generic.rs src/
cargo fmt
