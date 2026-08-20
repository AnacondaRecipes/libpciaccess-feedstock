set -ex
meson setup builddir \
    ${MESON_ARGS} \
    --prefix=$PREFIX \
    --libdir=lib

ninja -C builddir -j${CPU_COUNT}
ninja -C builddir install
