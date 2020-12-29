.PHONY: qmk karabiner

MD_LOADER := /Users/Alex/Desktop/configs/mdloader_mac
qmk:
	${MD_LOADER} --first --download ~/qmk_firmware/massdrop_alt_reitnue.bin --restart

karabiner:
	cp ~/.config/karabiner/karabiner.json ~/Desktop/configs/karabiner/karabiner.json
