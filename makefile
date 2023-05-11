SHELL := /usr/bin/bash

T_DIR := "$$HOME/quarterdeck/.dots/stow-test"
CONF_DIR := "$$XDG_CONFIG_HOME"

BF_DIR := $$HOME
ETC_DIR := /etc
KITTY_DIR := $(CONF_DIR)/kitty
NVIM_DIR := $(CONF_DIR)/nvim
NVIM_ROOT_DIR := /root/.config/nvim
PICOM_DIR := $(CONF_DIR)/picom
RANGER_DIR := $(CONF_DIR)/ranger
USR_DIR := /usr

all: bash_functions etc kitty nvim picom ranger usr

all-clean: bash_functions-clean etc-clean kitty-clean nvim-clean picom-clean ranger-clean usr-clean

bash_functions:
	stow -t $(BF_DIR) bash_functions

bash_functions-clean:
	stow -t $(BF_DIR) -D bash_functions

etc:
	stow -t $(ETC_DIR)/profile.d -d ./etc profile.d

etc-clean:
	stow -t $(ETC_DIR)/profile.d -D -d ./etc profile.d

kitty:
	stow -t $(KITTY_DIR) kitty

kitty-clean:
	stow -t $(KITTY_DIR) -D kitty

nvim:
	stow -t $(NVIM_DIR) nvim --ignore 'root'

nvim-clean:
	stow -t $(NVIM_DIR) -D nvim

nvim-root:
	stow -t $(NVIM_ROOT_DIR) -d ./nvim root

nvim-root-clean:
	stow -t $(NVIM_ROOT_DIR) -d ./nvim -D root

picom:
	stow -t $(PICOM_DIR) picom

picom-clean:
	stow -t $(PICOM_DIR) -D picom

ranger:
	stow -t $(RANGER_DIR) ranger

ranger-clean:
	stow -t $(RANGER_DIR) -D ranger

usr:
	stow -t $(USR_DIR)/share/xsessions -d ./usr/share/ xsessions

usr-clean:
	stow -t $(USR_DIR)/share/xsessions -d ./usr/share/ -D xsessions

.PHONY: bash_functions etc kitty nvim picom ranger usr
