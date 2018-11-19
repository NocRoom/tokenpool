set -eux
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs redis-server screen redis build-essential -y
sudo npm install -g node-gyp
sudo npm i npm@latest -g
git clone https://github.com/NocRoom/tokenpool.git
cd tokenpool/
npm install
npm run webpack
mv sample.account.config.js account.config.js
mv sample.pool.config.js pool.config.js
npm run server
