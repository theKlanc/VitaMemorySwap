TITLE_ID = MEMSWAP00
TARGET = MemorySwap
SOURCES = main.c
OBJECTS = $(SOURCES:*.c=*.o)


LIBS = -lSceDisplay_stub -lSceCtrl_stub -lScePower_stub

PREFIX  = arm-vita-eabi
CC      = $(PREFIX)-g++
CFLAGS  = -Wl,-q,-Map,output.map -std=c++14 -D_VITA
ASFLAGS = $(CFLAGS)

all: $(TARGET).vpk

%.vpk: eboot.bin
	vita-mksfoex -s TITLE_ID=$(TITLE_ID) "$(TARGET)" param.sfo
	vita-pack-vpk -s param.sfo -b eboot.bin \
		--add sce_sys/icon0.png=sce_sys/icon0.png \
		--add sce_sys/pic0.png=sce_sys/pic0.png \
		--add sce_sys/livearea/contents/bg.png=sce_sys/livearea/contents/bg.png \
		--add sce_sys/livearea/contents/template.xml=sce_sys/livearea/contents/template.xml \
		$@

eboot.bin: $(TARGET).velf
	vita-make-fself $< $@

%.velf: %.elf
	vita-elf-create $< $@

$(TARGET).elf: $(OBJECTS)
	$(CC) $(CFLAGS) $^ $(LIBS) -o $@

%.o: %.png
	$(PREFIX)-ld -r -b binary -o $@ $^

%*.o: %*.cpp
	$(CC) $(CFLAGS) -c -o $@ $<
	
%*.o: %*.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	@rm -rf $(TARGET).vpk $(TARGET).velf $(TARGET).elf \
		eboot.bin param.sfo