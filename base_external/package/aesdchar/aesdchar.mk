
##############################################################
#
# AESDCHAR
#
##############################################################

# Reference my assignment 3 git contents
AESDCHAR_VERSION = '302ab5adea61ff4a1dbc7b4dfa53cd2f60d72863'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-serges147.git'
AESDCHAR_SITE_METHOD = git
AESDCHAR_LICENSE = GPL-2.0
AESDCHAR_LICENSE_FILES = COPYING

AESDCHAR_MODULE_SUBDIRS += aesd-char-driver

define AESDCHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
