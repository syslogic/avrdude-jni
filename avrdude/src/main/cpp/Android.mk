LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := avrdude-static
LOCAL_C_INCLUDES := ac_cfg.h arduino.h avr910.h avrdude.h avrftdi.h avrftdi_tpi.h bitbang.h buspirate.h butterfly.h config.h config_gram.h crc16.h dfu.h flip1.h flip2.h ft245r.h jtag3.h jtagmkI.h jtagmkII.h libavrdude.h linux_ppdev.h linuxgpio.h loaddrv.h my_ddk_hidsdi.h par.h pickit2.h ppi.h serbb.h stk500.h stk500generic.h stk500v2.h term.h tpi.h usbasp.h usbdevs.h usbtiny.h wiring.h libftdi1/ftdi.h
LOCAL_SRC_FILES := arduino.c avr.c avr910.c avrftdi.c avrftdi_tpi.c avrpart.c bitbang.c buspirate.c butterfly.c config.c config_gram.c crc16.c dfu.c fileio.c flip1.c flip2.c jtag3.c jtagmkI.c jtagmkII.c lexer.c linuxgpio.c lists.c main.c par.c pgm.c pgm_type.c pickit2.c pindefs.c ppi.c ppiwin.c safemode.c ser_avrdoper.c ser_posix.c serbb_posix.c stk500.c stk500generic.c stk500v2.c term.c update.c usb_libusb.c usbasp.c usbtiny.c wiring.c
LOCAL_CFLAGS = -Wno-gnu-zero-variadic-macro-arguments -Wno-pointer-arith -Wno-macro-redefined -Wno-format-pedantic -Wno-empty-translation-unit -Wno-tautological-constant-out-of-range-compare -Wall -pedantic -std=c99 -g
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avrdude-jni
LOCAL_STATIC_LIBRARIES := avrdude-static
LOCAL_C_INCLUDES := avrdude-jni.h
LOCAL_SRC_FILES := avrdude-jni.c
include $(BUILD_SHARED_LIBRARY)

#include $(CLEAR_VARS)
#LOCAL_MODULE := avrdude
#LOCAL_C_INCLUDES := ac_cfg.h arduino.h avr910.h avrdude.h avrftdi.h avrftdi_tpi.h bitbang.h buspirate.h butterfly.h config.h config_gram.h crc16.h dfu.h flip1.h flip2.h ft245r.h jtag3.h jtagmkI.h jtagmkII.h libavrdude.h linux_ppdev.h linuxgpio.h loaddrv.h my_ddk_hidsdi.h par.h pickit2.h ppi.h serbb.h stk500.h stk500generic.h stk500v2.h term.h tpi.h usbasp.h usbdevs.h usbtiny.h wiring.h libftdi1/ftdi.h
#LOCAL_SRC_FILES := arduino.c avr.c avr910.c avrftdi.c avrftdi_tpi.c avrpart.c bitbang.c buspirate.c butterfly.c config.c config_gram.c crc16.c dfu.c fileio.c flip1.c flip2.c jtag3.c jtagmkI.c jtagmkII.c lexer.c linuxgpio.c lists.c main.c par.c pgm.c pgm_type.c pickit2.c pindefs.c ppi.c ppiwin.c safemode.c ser_avrdoper.c ser_posix.c serbb_posix.c stk500.c stk500generic.c stk500v2.c term.c update.c usb_libusb.c usbasp.c usbtiny.c wiring.c
#LOCAL_CFLAGS = -Wno-gnu-zero-variadic-macro-arguments -Wno-pointer-arith -Wno-macro-redefined -Wno-format-pedantic -Wno-empty-translation-unit -Wno-tautological-constant-out-of-range-compare -Wall -pedantic -std=c99 -g 
#include $(BUILD_EXECUTABLE)
