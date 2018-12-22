# Vernam Cipher with 2 Picoblaze 

Picoblaze 2 generates random stream using 8 bit linear feedback shift register and sends it to Picoblaze 1.
Picoblaze 1 reads message from RAMs 0th address and crypts it with random stream and writes back to RAMs
1th address.

## Dependencies

* opbasm (https://kevinpt.github.io/opbasm/)

## Compile

* To compile everything 
    * make

* Compile individually
    * make cipher
    * make random

* Clean everything
    * make clean

## FPGA

* Syntesizes succesfully for xc3s50-5pq208 Spartan 3

## RAM

* Write depth: 2    
* read-write width: 8
* using ram.coe
