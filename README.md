# CH569/CH565 SVD2RUST patches
This are my patches to the CH56x svd file.
It is still work in progress and is wrong im many places.

## Get the svd

You can find the svd in `MounRiver_Studio_Community_Linux_*`

http://www.mounriver.com/download

```
wget http://file.mounriver.com/upgrade/MounRiver_Studio_Community_Linux_x64_V110.tar.xz
mkdir moun_river
cd moun_river
tar --strip-components 8 --wildcards -xvf MounRiver_Studio_Community_Linux_x64_V110.tar.xz "*.svd"
cp CH56Xxx.svd ../CH56Xxx.svd
cd ..
sha1sum -c CH56Xxx.svd.sha1
./patch.sh CH56Xxx.svd
```


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
