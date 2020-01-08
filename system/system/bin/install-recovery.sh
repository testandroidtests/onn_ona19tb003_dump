#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:16777216:20e4eac9139259d64e2cb2bbece320ef2119fcc7; then
  applypatch  EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot:16777216:88d057b9fef6cd75be2b712f2258e3983825f05e EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery 20e4eac9139259d64e2cb2bbece320ef2119fcc7 16777216 88d057b9fef6cd75be2b712f2258e3983825f05e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
