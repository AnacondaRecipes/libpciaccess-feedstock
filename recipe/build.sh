set -ex

meson setup builddir ${MESON_ARGS} -Dzlib=enabled

ninja -C builddir -j${CPU_COUNT}
ninja -C builddir install
