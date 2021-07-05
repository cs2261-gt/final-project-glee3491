PRODUCT_NAME       = Project

# You probably won't need to touch anything below here!!!
# The one exception is the cleanup stuff.

SOURCES            = $(wildcard *.c)
ASMSOURCES         = $(wildcard *.asm)
CCPATH             = C:\cygwin64\bin
DKPATH             = C:\devkitPro
VBASIM             = C:\vbam-2.1.0\bin\visualboyadvance-m.exe
FIND               = find
COPY               = cp -r

# --- File Names
ELF_NAME           = $(PRODUCT_NAME).elf
ROM_NAME           = $(PRODUCT_NAME).gba
BIN_NAME           = $(PRODUCT_NAME)

#MODEL              = -mthumb-interwork -mthumb
MODEL              = -mthumb-interwork -marm -mlong-calls #This makes interrupts work
SPECS              = -specs=gba.specs

# --- Archiver
AS                 = $(DKPATH)\devkitARM\bin\arm-none-eabi-as
ASFLAGS            = -mthumb-interwork

# --- Compiler
CC                 = $(DKPATH)\devkitARM\bin\arm-none-eabi-gcc
CFLAGS             = $(MODEL) -O2 -Wall -pedantic -Wextra -std=c99 -save-temps -D_ROM=$(ROM_NAME) -D_VBA=$(VBASIM)


# --- Linker
LD                 = $(DKPATH)\devkitARM\bin\arm-none-eabi-gcc
LDFLAGS            = $(SPECS) $(MODEL) -lm

# --- Object\Executable Packager
OBJCOPY            = $(DKPATH)\devkitARM\bin\arm-none-eabi-objcopy
OBJCOPYFLAGS       = -O binary

# --- ROM Fixer
GBAFIX             = $(DKPATH)\tools\bin\gbafix

# --- Delete
RM                 = rm -f

ASMOBJECTS = $(ASMSOURCES:.asm=.o)
COBJECTS = $(SOURCES:.c=.o)
OBJECTS = $(COBJECTS) $(ASMOBJECTS)


# --- Main build target

all : clean run

run : $(ROM_NAME)
	$(VBASIM) $(ROM_NAME)

build : $(ROM_NAME)

# --- Build .elf file into .gba ROM file
$(ROM_NAME) : $(ELF_NAME)
	$(OBJCOPY) $(OBJCOPYFLAGS) $(ELF_NAME) $(ROM_NAME)
	$(GBAFIX) $(ROM_NAME)

# --- Build .o files into .elf file
$(ELF_NAME) : $(OBJECTS)
	$(LD) $(OBJECTS) $(LDFLAGS) -o $@

# -- Build .asm files into .o files
$(ASMOBJECTS) : %.o : %.asm
	$(AS) $(ASFLAGS) $< -o $@

# -- Build .c files into .o files
$(COBJECTS) : %.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@


clean:
	$(RM) $(ROM_NAME) $(ELF_NAME) $(BIN_NAME)
	$(RM) *.o *.i *.s