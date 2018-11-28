npm stop
apt-get update -y
cp ./tokenpool/account.config.js ./account.config.js
cp ./tokenpool/pool.config.js ./pool.config.js
rm -rf ./tokenpool
git clone https://github.com/NocRoom/tokenpool.git
cp ./account.config.js ./tokenpool/account.config.js
cp ./pool.config.js ./tokenpool/pool.config.js
cd tokenpool/
npm install
npm run webpack
npm run server
