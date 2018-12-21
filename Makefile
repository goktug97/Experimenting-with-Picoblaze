CC = python3 -m opbasm
ROM = ./ROM_form.v

main:
	$(CC) -i cipher.psm -t $(ROM) -6 -d
	$(CC) -i random.psm -t $(ROM) -6 -d

cipher:
	$(CC) -i cipher.psm -t $(ROM) -6 -d
random:
	$(CC) -i random.psm -t $(ROM) -6 -d
clean:
	rm -f *.mem *.fmt *.log cipher.v random.v

