SHELL := /usr/bin/bash

TEST_DIR := "$$HOME/quarterdeck/.dots/stow-test"
CONF_DIR := "$$XDG_CONFIG_HOME"

BASH_DIR := $$HOME
ETC_DIR := /etc
KITTY_DIR := $(CONF_DIR)/kitty
NVIM_DIR := $(CONF_DIR)/nvim
NVIM_ROOT_DIR := /root/.config/nvim
PICOM_DIR := $(CONF_DIR)/picom
RANGER_DIR := $(CONF_DIR)/ranger
SXHKD_DIR := $(CONF_DIR)/sxhkd
USR_DIR := /usr

test-all: test-bash test-etc test-kitty test-nvim test-nvim-root test-picom test-ranger test-sxhkd test-usr
test-all-clean: test-bash-clean test-etc-clean test-kitty-clean test-nvim-clean test-nvim-root-clean test-picom-clean test-ranger-clean test-sxhkd-clean test-usr-clean

user: bash kitty nvim picom ranger sxhkd

user-clean: bash-clean kitty-clean nvim-clean picom-clean ranger-clean sxhkd-clean

system: etc usr

system-clean: etc-clean usr-clean

bash:
	stow -t $(BASH_DIR) bash

bash-clean:
	stow -t $(BASH_DIR) -D bash

test-bash: BASH_DIR=$(TEST_DIR)/bash/
test-bash: bash

test-bash-clean: BASH_DIR=$(TEST_DIR)/bash/
test-bash-clean: bash-clean

# cannot symlink these files
etc:
	@for file in ./etc/profile.d/*; do \
		echo "Adding file: $(ETC_DIR)/profile.d/$$(basename $$file)"; \
		cp -r $$file $(ETC_DIR)/profile.d; \
	done

# don't touch anything we didn't make
etc-clean:
	@for file in ./etc/profile.d/*; do \
		file=$$(basename $$file); \
		echo "Removing file: $(ETC_DIR)/profile.d/$$file"; \
		rm -rf $(ETC_DIR)/profile.d/$$file; \
	done

test-etc: ETC_DIR=$(TEST_DIR)/etc
test-etc: etc

test-etc-clean: ETC_DIR=$(TEST_DIR)/etc
test-etc-clean: etc-clean

kitty:
	stow -t $(KITTY_DIR) kitty

kitty-clean:
	stow -t $(KITTY_DIR) -D kitty

test-kitty: KITTY_DIR=$(TEST_DIR)/kitty
test-kitty: kitty

test-kitty-clean: KITTY_DIR=$(TEST_DIR)/kitty
test-kitty-clean: kitty-clean

nvim:
	stow -t $(NVIM_DIR) nvim --ignore 'root'

nvim-clean:
	stow -t $(NVIM_DIR) -D nvim

test-nvim: NVIM_DIR=$(TEST_DIR)/nvim
test-nvim: nvim

test-nvim-clean: NVIM_DIR=$(TEST_DIR)/nvim
test-nvim-clean: nvim-clean

nvim-root:
	stow -t $(NVIM_ROOT_DIR) -d ./nvim root

nvim-root-clean:
	stow -t $(NVIM_ROOT_DIR) -d ./nvim -D root

test-nvim-root: NVIM_ROOT_DIR=$(TEST_DIR)/nvim-root
test-nvim-root: nvim-root

test-nvim-root-clean: NVIM_ROOT_DIR=$(TEST_DIR)/nvim-root
test-nvim-root-clean: nvim-root-clean

picom:
	stow -t $(PICOM_DIR) picom

picom-clean:
	stow -t $(PICOM_DIR) -D picom

test-picom: PICOM_DIR=$(TEST_DIR)/picom
test-picom: picom

test-picom-clean: PICOM_DIR=$(TEST_DIR)/picom
test-picom-clean: picom-clean

ranger:
	stow -t $(RANGER_DIR) ranger

ranger-clean:
	stow -t $(RANGER_DIR) -D ranger

test-ranger: RANGER_DIR=$(TEST_DIR)/ranger
test-ranger: ranger

test-ranger-clean: RANGER_DIR=$(TEST_DIR)/ranger
test-ranger-clean: ranger-clean

sxhkd:
	stow -t $(SXHKD_DIR) sxhkd

sxhkd-clean:
	stow -t $(SXHKD_DIR) -D sxhkd

test-sxhkd: SXHKD_DIR=$(TEST_DIR)/sxhkd
test-sxhkd: sxhkd

test-sxhkd-clean: SXHKD_DIR=$(TEST_DIR)/sxhkd
test-sxhkd-clean: sxhkd-clean

# cannot symlink these files
# -- lightdm cannot read these as symlinks
# -- separate partitions
usr: 
	@for file in ./usr/share/xsessions/*; do \
		echo "Adding file: $(USR_DIR)/share/xsessions/$$(basename $$file)"; \
		cp -r $$file $(USR_DIR)/share/xsessions; \
	done

# don't touch anything we didn't make
usr-clean:
	@for file in ./usr/share/xsessions/*; do \
		file=$$(basename $$file); \
		echo "Removing file: $(USR_DIR)/share/xsessions/$$file"; \
		rm -rf $(USR_DIR)/share/xsessions/$$file; \
	done

test-usr: USR_DIR=$(TEST_DIR)/usr
test-usr: usr

test-usr-clean: USR_DIR=$(TEST_DIR)/usr
test-usr-clean: usr-clean

.PHONY: bash etc kitty nvim nvim-root picom ranger sxhkd usr
