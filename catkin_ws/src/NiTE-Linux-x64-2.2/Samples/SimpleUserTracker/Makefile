include ../CommonDefs.mak

BIN_DIR = Bin

INC_DIRS = \
	../Common \
	../../Include \
	$(OPENNI2_INCLUDE)

SRC_FILES = *.cpp

LIB_DIRS += $(OPENNI2_REDIST)

USED_LIBS += OpenNI2 NiTE2

EXE_NAME = SimpleUserTracker

CFLAGS += -Wall

include ../CommonCppMakefile
