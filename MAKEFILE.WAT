DEBUG = TRUE

!IF "$(DEBUG)" == "TRUE"
COPT = -mf -bt=dos -fp5 -5s -s -w3 -ze -od -d2 -5r -zp4 -zq
LOPT = debug all
LIBS = gnu32d
!ELSE
COPT = -mf -bt=dos -fp5 -5s -s -w3 -ze -omaxnet -5r -zp4 -zq
LOPT = 
LIBS = gnu32o
!ENDIF

#LIB =386lib

PROG = watlock

all : $(PROG).exe

$(PROG).obj : $(PROG).c
  wcc386 $(COPT) $*.c

$(PROG).exe : $(PROG).obj
	wlink @<<$(@B).lnk
system   dos4g
option   map=$(PROG)
option   stub=wstubq.exe
option   stack=40000
$(LOPT)
name     $(PROG)
library  $(LIBS)
file     $(PROG)
<<keep


