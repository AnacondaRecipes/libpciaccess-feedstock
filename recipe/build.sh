set -ex

meson setup builddir ${MESON_ARGS}

ninja -C builddir -j${CPU_COUNT}
ninja -C builddir install
