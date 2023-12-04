FROM node:16-slim

WORKDIR /src/scratch-vm

COPY scratch-vm/package-lock.json scratch-vm/package.json /src/scratch-vm/

# RUN npm install \
# && npm link 

CMD ["npm", "--version"]
CMD ["ehch", "test1"]
CMD ["node", "--version"]
CMD ["ehch", "test2"]

# WORKDIR /src/scratch-gui

# COPY scratch-gui/package-lock.json scratch-gui/package.json /src/scratch-gui/


# RUN npm install \
# 	&& npm link scratch-vm 
# 	
# CMD ["npm", "start"]
