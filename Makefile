CC= g++ -O3
INCLUDE= -I /home/yerui/src/SeqLib/ -I /home/yerui/src/SeqLib/htslib/ /home/yerui/src/SeqLib/bin/libseqlib.a /home/yerui/src/SeqLib/bin/libhts.a /home/yerui/src/SeqLib/bin/libbwa.a /home/yerui/src/SeqLib/bin/libfml.a
LIBS= -llzma -lbz2 -L. -lz -lpthread

bamRdf: bamRdf.cc
	$(CC) $< $(INCLUDE) $(LIBS) -o $@

.PHONY: clean

clean:
	-rm bamRdf
