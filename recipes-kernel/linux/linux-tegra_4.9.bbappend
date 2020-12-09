FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRCBRANCH = "patches${LINUX_VERSION_EXTENSION}"
SRCREV = "3924d6fccfbf4757b40adf3e06628d566681b011"
KBRANCH = "${SRCBRANCH}"
SRC_REPO = "github.com/OE4T/linux-tegra-4.9;protocol=https"
KERNEL_REPO = "${SRC_REPO}"
SRC_URI = "git://${KERNEL_REPO};name=machine;branch=${KBRANCH} \
           ${@'file://localversion_auto.cfg' if d.getVar('SCMVERSION') == 'y' else ''} \
           ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'file://systemd.cfg', '', d)} \
"

