config() {
echo "generating config.json"
cat << EOF > config.json
          {
            "authToken": "$authToken",
            "owner": $ownerID
          }
          EOF
}

dependencies() {
echo "installing dependencies"
npm install
}

start() {
echo "starting bot"
node server
}

echo "start"
config
dependencies
start
