SHELL := /bin/bash
install: reset scratch-vm scratch-gui line_fastAPI install-scratch install-line_fastAPI
reset:
	@rm -rf scratch-vm
	@rm -rf scratch-gui
	@rm -rf line_fastAPI
scratch-vm:
	@echo -e "\e[44m clone ankurugranpa/scratch-vm \e[m"
	@git clone git@github.com:ankurugranpa/scratch-vm.git

scratch-gui:
	@echo -e "\e[44m clone ankurugranpa/scratch-gui \e[m"
	@git clone git@github.com:ankurugranpa/scratch-gui.git

line_fastAPI:
	@echo -e "\e[44m clone ankurugranpa/line_fastAPI \e[m"
	@git clone git@github.com:ankurugranpa/line_fastAPI.git
install-scratch-only: scratch-vm scratch-gui install-scratch
install-scratch: scratch-vm scratch-gui
	@echo -e "\e[44m install scratch \e[m"
	@cd scratch/\scratch-vm \
	&& npm install \
	&& npm link \
	&& cd ../scratch-gui \
	&& npm install \
	&& npm link scratch-vm

install-line_fastAPI: line_fastAPI
	@echo -e "\e[44m install line_fastAPI \e[m"
	@cd line_fastAPI\
	&& touch .env \
	&& echo "LINE_CHANEL_API_KEY='your_api_key'" >> .env \
	&& echo "LINE_USER_ID='your_user_id'" >> .env \
	&& python3 -m venv venv \
	&& source venv/bin/activate \
	&& pip install -r requirements.txt \
	&& deactivate 

