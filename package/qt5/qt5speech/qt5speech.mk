################################################################################
#
# qt5speech
#
################################################################################

QT5SPEECH_VERSION = 8ad0f08ad7e2a8d27dc5e69806812c6a3f298946
QT5SPEECH_SITE = $(QT5_SITE)/qtspeech/-/archive/$(QT5SPEECH_VERSION)
QT5SPEECH_SOURCE = qtspeech-$(QT5SPEECH_VERSION).tar.bz2
QT5SPEECH_INSTALL_STAGING = YES
QT5SPEECH_LICENSE = GPL-2.0+ or LGPL-3.0, GFDL-1.3 (docs)
QT5SPEECH_LICENSE_FILES = LICENSE.GPLv2 LICENSE.LGPLv3 LICENSE.FDL
QT5SPEECH_SYNC_QT_HEADERS = YES

ifeq ($(BR2_PACKAGE_FLITE),y)
QT5SPEECH_DEPENDENCIES += flite
endif

ifeq ($(BR2_PACKAGE_SPEECHD),y)
QT5SPEECH_DEPENDENCIES += speechd
endif

$(eval $(qmake-package))
