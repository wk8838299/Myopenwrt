#!/bin/sh

# User-controllable options
grub_modinfo_target_cpu=i386
grub_modinfo_platform=pc
grub_disk_cache_stats=0
grub_boot_time_stats=0
grub_have_font_source=0

# Autodetected config
grub_have_asm_uscore=0
grub_bss_start_symbol="__bss_start"
grub_end_symbol="end"

# Build environment
grub_target_cc='x86_64-openwrt-linux-musl-gcc'
grub_target_cc_version='x86_64-openwrt-linux-musl-gcc (OpenWrt GCC 7.5.0 r11272-e290024717) 7.5.0'
grub_target_cflags=' -Os -Wall -W -Wshadow -Wpointer-arith -Wundef -Wchar-subscripts -Wcomment -Wdeprecated-declarations -Wdisabled-optimization -Wdiv-by-zero -Wfloat-equal -Wformat-extra-args -Wformat-security -Wformat-y2k -Wimplicit -Wimplicit-function-declaration -Wimplicit-int -Wmain -Wmissing-braces -Wmissing-format-attribute -Wmultichar -Wparentheses -Wreturn-type -Wsequence-point -Wshadow -Wsign-compare -Wswitch -Wtrigraphs -Wunknown-pragmas -Wunused -Wunused-function -Wunused-label -Wunused-parameter -Wunused-value  -Wunused-variable -Wwrite-strings -Wnested-externs -Wstrict-prototypes -g -Wredundant-decls -Wmissing-prototypes -Wmissing-declarations  -Wextra -Wattributes -Wendif-labels -Winit-self -Wint-to-pointer-cast -Winvalid-pch -Wmissing-field-initializers -Wnonnull -Woverflow -Wvla -Wpointer-to-int-cast -Wstrict-aliasing -Wvariadic-macros -Wvolatile-register-var -Wpointer-sign -Wmissing-include-dirs -Wmissing-prototypes -Wmissing-declarations -Wformat=2 -march=i386 -m32 -mrtd -mregparm=3 -falign-jumps=1 -falign-loops=1 -falign-functions=1 -freg-struct-return -mno-mmx -mno-sse -mno-sse2 -mno-sse3 -mno-3dnow -msoft-float -fno-dwarf2-cfi-asm -mno-stack-arg-probe -fno-asynchronous-unwind-tables -fno-unwind-tables -Qn -fno-stack-protector -Wtrampolines'
grub_target_cppflags=' -Wall -W  -DGRUB_MACHINE_PCBIOS=1 -DGRUB_MACHINE=I386_PC -m32 -nostdinc -isystem /builder/shared-workdir/build/staging_dir/toolchain-x86_64_gcc-7.5.0_musl/lib/gcc/x86_64-openwrt-linux-musl/7.5.0/include -I$(top_srcdir)/include -I$(top_builddir)/include'
grub_target_ccasflags=' -g  -m32 -msoft-float'
grub_target_ldflags=' -m32 -Wl,-melf_i386 -Wl,--build-id=none'
grub_cflags='-O2 -I/builder/shared-workdir/build/staging_dir/host/include -I/builder/shared-workdir/build/staging_dir/hostpkg/include -I/builder/shared-workdir/build/staging_dir/target-x86_64_musl/host/include'
grub_cppflags='-I/builder/shared-workdir/build/staging_dir/host/include -I/builder/shared-workdir/build/staging_dir/hostpkg/include -I/builder/shared-workdir/build/staging_dir/target-x86_64_musl/host/include -D_FILE_OFFSET_BITS=64'
grub_ccasflags='-O2 -I/builder/shared-workdir/build/staging_dir/host/include -I/builder/shared-workdir/build/staging_dir/hostpkg/include -I/builder/shared-workdir/build/staging_dir/target-x86_64_musl/host/include'
grub_ldflags='-L/builder/shared-workdir/build/staging_dir/host/lib -L/builder/shared-workdir/build/staging_dir/hostpkg/lib -L/builder/shared-workdir/build/staging_dir/target-x86_64_musl/host/lib'
grub_target_strip='x86_64-openwrt-linux-musl-strip'
grub_target_nm='x86_64-openwrt-linux-musl-nm'
grub_target_ranlib='x86_64-openwrt-linux-musl-ranlib'
grub_target_objconf=''
grub_target_obj2elf=''
grub_target_img_base_ldopt='-Wl,-Ttext'
grub_target_img_ldflags='@TARGET_IMG_BASE_LDFLAGS@'

# Version
grub_version="2.02"
grub_package="grub"
grub_package_string="GRUB 2.02"
grub_package_version="2.02"
grub_package_name="GRUB"
grub_package_bugreport="bug-grub@gnu.org"
