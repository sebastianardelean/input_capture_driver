FILE=inputcapture
obj-m += $(FILE).o
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

install:
	sudo insmod ./$(FILE).ko

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

uninstall:
	sudo rmmod $(FILE)
