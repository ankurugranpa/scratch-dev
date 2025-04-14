SHELL := /bin/bash

# 変数
SCRATCH_DIR := scratch
SCRATCH_VM := $(SCRATCH_DIR)/scratch-vm
SCRATCH_GUI := $(SCRATCH_DIR)/scratch-gui
LINE_API := line-fastAPI
SCRATCH_DB := scratch-db

.PHONY: install reset init-submodules install-scratch install-line-fastapi install-db

install: reset init-submodules install-scratch install-line-fastapi install-db

reset:
	@echo -e "\e[41m Resetting working directories... \e[m"
	@rm -rf $(SCRATCH_VM) $(SCRATCH_GUI) $(LINE_API) $(SCRATCH_DB)

init-submodules:
	@echo -e "\e[44m Initializing git submodules... \e[m"
	@git submodule update --init --recursive

install-scratch:
	@echo -e "\e[44m Installing Scratch (vm + gui)... \e[m"
	cd $(SCRATCH_VM) \
	&& npm install \
	&& npm link
	cd $(SCRATCH_GUI) \
	&& npm install \
	&& npm link scratch-vm

install-line-fastapi:
	@echo -e "\e[44m Installing line-fastAPI... \e[m"
	cd $(LINE_API) \
	&& touch .env \
	&& echo "LINE_CHANEL_API_KEY='your_api_key'" > .env \
	&& echo "LINE_USER_ID='your_user_id'" >> .env \
	&& python3 -m venv venv \
	&& source venv/bin/activate \
	&& pip install -r requirements.txt \
	&& deactivate

install-db:
	@echo -e "\e[44m Installing scratch-db... \e[m"
