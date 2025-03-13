include $(TOPDIR)/rules.mk

PKG_NAME:=webPlugin
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/webPlugin
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=webPlugin -- use web API conf openclash and frpc
endef

define Package/webPlugin/description
    If you can't figure out what this program does, you're probably
    brain-dead and need immediate medical attention.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/webPlugin/install
	$(INSTALL_DIR) $(1)/bin
	$(INSTALL_BIN) ./bin/webPlugin $(1)/bin/
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,webPlugin))
