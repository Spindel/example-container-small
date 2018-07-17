IMAGE_REPO = registry.gitlab.com/modioab/foobar
IMAGE_TAG_PREFIX = ssh-ca

FEDORA_ROOT_ARCHIVE = rootfs.tar
IMAGE_FILES = $(FEDORA_ROOT_ARCHIVE)
FEDORA_ROOT_PACKAGES = bash
FEDORA_ROOT_PACKAGES += openssh-clients

include build.mk
