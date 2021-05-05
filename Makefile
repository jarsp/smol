bins = prob0

all: prob0

prob0:
	gcc prob0.c -fno-stack-protector -z execstack -no-pie -o prob0


.PHONY: aslr-off aslr-on clean

aslr-off:
	echo 0 | sudo tee /proc/sys/kernel/randomize_va_space

aslr-on:
	echo 2 | sudo tee /proc/sys/kernal/randomize_va_space

clean:
	rm -f $(bins)
