FROM debian:stable-slim 

WORKDIR $HOME
ENV PATH "/root/.nodebrew/current/bin:${PATH}"

RUN apt-get update && apt-get install -y \
    curl \
    git \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

RUN curl -L git.io/nodebrew | perl - setup \
	&& nodebrew install 16.20.2 \
	&& nodebrew use 16.20.2


# GitHubにSSH接続するための設定
#RUN mkdir -p -m 0600 ~/.ssh && \
#    ssh-keyscan github.com >> ~/.ssh/known_hosts && \
#    git config --global url.git@github.com:.insteadOf https://github.com/
#
#RUN --mount=type=ssh\
#	git clone git@github.com:ankurugranpa/ankuru-scratch-vm.git \
#	&& git clone git@github.com:ankurugranpa/ankuru-scratch-gui.git 

WORKDIR /root/scratch-vm
RUN echo $(readlink -f package.json)
RUN npm install \
	&& npm link 

#WORKDIR $HOME/scratch-gui
#RUN npm install \
#	&& npm link scratch-vm 
#CMD ["npm", "start"]
