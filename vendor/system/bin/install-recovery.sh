#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11720704 d258990648332dd81e8c9c40b2cdcc2e20dc7bde 8910848 8668d3af1299cc20de77bb2c266cff34e6cbefb2
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:11720704:d258990648332dd81e8c9c40b2cdcc2e20dc7bde; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8910848:8668d3af1299cc20de77bb2c266cff34e6cbefb2 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery d258990648332dd81e8c9c40b2cdcc2e20dc7bde 11720704 8668d3af1299cc20de77bb2c266cff34e6cbefb2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
