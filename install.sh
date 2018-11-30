set -eux

# Updating
verbose "Updating OS"

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs redis-server screen redis build-essential -y
sudo npm install -g node-gyp
sudo npm i npm@latest -g

# Installing
verbose "Installing NocRoom TokenPool"

git clone https://github.com/NocRoom/tokenpool.git
cd tokenpool/
npm install
npm run webpack
mv sample.account.config.js account.config.js
mv sample.pool.config.js pool.config.js

# Starting
verbose "Starting NocRoom TokenPool"
npm run server
