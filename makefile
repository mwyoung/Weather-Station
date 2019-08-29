SHELL := /bin/bash
ARDUINO_IDE := $(HOME)/Documents/ArduinoIDE
ARDUINO_PRGM := $(ARDUINO_IDE)/arduino
ARDUINO_IDE_LIBS := $(ARDUINO_IDE)/libraries
ARDUINO_WORKSPACE := $(HOME)/Documents/Arduino
ARDUINO_LIBS := $(ARDUINO_WORKSPACE)/libraries
ARDUINO_OLDLIBS := $(ARDUINO_WORKSPACE)/OldLibraries
ESP_LIBS := $(HOME)/.arduino15/packages/esp8266/hardware/esp8266/2.5.2/libraries

ARD_TAG = tags.arduino_lib
ESP_TAG = tags.esp8266_lib
PRJ_TAG = tags.ino
TAG_FLAGS = --langmap=c++:.cpp.ino.pde.h.hpp --languages=C++

ifneq ($(wildcard *.ino).ino,)
ARDUINO_INO_FILE = $(wildcard *.ino)
else
ARDUINO_INO_FILE = Weather.ino
endif
SRC = $(ARDUINO_INO_FILE)
DATA = data

#Weather Images
WI = weather-icons/svg
#Flags - reduce border, flip colors, set 24 bit color
WIFLAG_COLOR = -channel RGB -negate -type truecolor
#Flags - trim outsides, set center for image
WIFLAG_CROP = -background white -gravity center
#Flags - resize to box
WIFLAG_LARGE = -trim -resize 48x48 $(WIFLAG_CROP) -extent 48x48 $(WIFLAG_COLOR)
WIFLAG_SMALL = -trim -resize 24x24 $(WIFLAG_CROP) -extent 24x24 $(WIFLAG_COLOR)

default: upload

gui: openGUI
openGUI:
	$(ARDUINO_PRGM) $(SRC)

upload:
	$(ARDUINO_PRGM) $(VBS) --upload $(SRC)

compile:
	$(ARDUINO_PRGM) $(VBS) --verify $(SRC)

verbose-upload: VBS = -v
verbose-upload: upload

verbose-compile: VBS = -v
verbose-compile: compile

#convert all in bash
#using icons from https://github.com/erikflowers/weather-icons
imageConvertLarge:
	mkdir -p $(DATA)
	cp $(WI)/wi-day-sunny.svg $(DATA)/clear-day.svg
	cp $(WI)/wi-night-clear.svg $(DATA)/clear-night.svg
	cp $(WI)/wi-rain.svg $(DATA)/rain.svg
	cp $(WI)/wi-snow.svg $(DATA)/snow.svg
	cp $(WI)/wi-sleet.svg $(DATA)/sleet.svg
	cp $(WI)/wi-strong-wind.svg $(DATA)/wind.svg
	cp $(WI)/wi-fog.svg $(DATA)/fog.svg
	cp $(WI)/wi-cloudy.svg $(DATA)/cloudy.svg
	cp $(WI)/wi-day-cloudy.svg $(DATA)/partly-cloudy-day.svg
	cp $(WI)/wi-night-cloudy.svg $(DATA)/partly-cloudy-night.svg
	cp $(WI)/wi-hail.svg $(DATA)/hail.svg
	cp $(WI)/wi-thunderstorm.svg $(DATA)/thunderstorm.svg
	cp $(WI)/wi-tornado.svg $(DATA)/tornado.svg
	cp $(WI)/wi-na.svg $(DATA)/na.svg
	for i in $(DATA)/*.svg; do \
		echo -e "Converting $$i"; \
		convert $(WIFLAG_LARGE) $$i $${i%.svg}.bmp; \
	done
	-rm -f $(DATA)/*.svg

imageConvertSmall:
	mkdir -p $(DATA)
	cp $(WI)/wi-sunrise.svg $(DATA)/sunrise.svg
	cp $(WI)/wi-sunset.svg $(DATA)/sunset.svg
	for i in $(DATA)/*.svg; do \
		echo -e "Converting $$i"; \
		convert $(WIFLAG_SMALL) $$i $${i%.svg}.bmp; \
	done
	-rm -f $(DATA)/*.svg

imageConvert: imageConvertLarge	imageConvertSmall

#Help from: https://collectiveidea.com/blog/archives/2017/04/05/arduino-programming-in-vim
ctags:
	ctags -f $(ARD_TAG) --tag-relative=never --exclude=$(ARDUINO_OLDLIBS)/* $(TAG_FLAGS) -R $(ARDUINO_LIBS)
	ctags -f $(ESP_TAG) --tag-relative=never $(TAG_FLAGS) -R $(ESP_LIBS)
	ctags -f $(PRJ_TAG) $(TAG_FLAGS) -R .
	cat $(ARD_TAG) $(ESP_TAG) $(PRJ_TAG) > tags
	sort tags -o tags
	rm -f tags.*
