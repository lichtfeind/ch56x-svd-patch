# CH569/CH565 SVD2RUST patches
This are my patches to the CH56x svd file.
It is still work in progress and is wrong im many places.


## Dependencies

To build you need:
 - wget
 - svdtools
 - svd2rust
 - from
 - cargo
 - rustfmt

```
cargo install --version 0.22.2 svd2rust
cargo install form
rustup component add rustfmt
pip install --user svdtools
```

## Build

```
./build.sh
```
