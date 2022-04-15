sh -c "$(curl -sSfL https://release.solana.com/v1.10.8/install)"
export PATH="/home/gitpod/.local/share/solana/install/active_release/bin:$PATH"
npm install -g ts-node
npm install -g npm@8.6.0
curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
yarn install --cwd metaplex/js/
ts-node metaplex/js/packages/cli/src/candy-machine-v2-cli.ts --version
solana config set --url https://api.devnet.solana.com
solana-keygen recover 'prompt://?key=0/0' -o ~/.config/solana/devnet.json
solana config set --keypair ~/.config/solana/devnet.json

