
#!/bin/bash

if [ ! -f "CH56Xxx-1.svd" ]; then
    wget https://git.swzry.com/zry/zerosp-ch56x-pac/raw/master/pre-work/CH56Xxx-Fixed.svd -O CH56Xxx-1.svd
fi

svd2rust -g --target=riscv -i CH56Xxx-1.svd.patched
rm -rf src
form -i lib.rs -o src/ && rm lib.rs
mv generic.rs src/
cargo fmt
