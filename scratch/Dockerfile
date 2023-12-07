FROM node:16.20.2-buster-slim

WORKDIR /src/scratch-vm
COPY ./scratch-vm/package.json /src/scratch-vm
COPY ./scratch-vm/package-lock.json /src/scratch-vm

# RUN npm config set prefix "/src/scratch-vm"
# RUN npm install --prefix "/src/scratch-vm" \
# 	&& npm link 

RUN npm install \
	&& npm link 

WORKDIR /src/scratch-gui

COPY ./scratch-gui/package.json /src/scratch-gui
COPY ./scratch-gui/package-lock.json /src/scratch-gui
COPY ./scratch-gui/scripts/prepublish.mjs /src/scratch-gui/scripts/prepublish.mjs
COPY ./scratch-gui/src/ /src/scratch-gui/src/
COPY ./scratch-gui/src/ /src/scratch-gui/src/
# RUN npm install -g
# RUN npm config set prefix "/src/scratch-gui"
# RUN npm install --prefix "/src/scratch-gui" \
# 	&& npm link scratch-vm 
RUN npm install \
        && npm link scratch-vm 
# && mv ./node_modules / 
      # && npm start 

# RUN cp /usr/local/lib/node_modules ./node_modules
# RUN ["npm", "start"]
ENTRYPOINT ["npm", "start"]
