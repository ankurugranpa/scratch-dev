echo "#####INSTALLING LINE_API_SERVER#####"
git clone git@github.com:ankurugranpa/line_fastAPI.git
echo "#####INSTALLING Scratch#####"
git clone git@github.com:ankurugranpa/scratch-gui.git
git clone git@github.com:ankurugranpa/scratch-vm.git
echo "#####Setup Scratch#####"
cd scratch-vm
npm install
npm link
cd ../scratch-gui
npm install
npm link scratch-vm
echo "#####Setup LINE_API_SERVER#####"
cd ../line_fastAPI
bash setup.sh
