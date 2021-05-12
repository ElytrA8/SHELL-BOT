dependencies() {
echo "installing dependencies"
npm install
}

start() {
echo "starting bot"
node server
}

echo "start"
dependencies
start
