echo "generating config.json"
cat << EOF > config.json
          {
            "authToken": "$authToken",
            "owner": $ownerID
          }
          EOF

echo "installing dependencies"
npm install

echo "starting bot"
mode server
