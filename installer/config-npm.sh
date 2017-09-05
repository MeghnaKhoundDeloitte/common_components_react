tput setaf 2; echo "Setting up npm prefix";
tput setaf 7;

## npm config preparation
rm -rf ~/.npm-global
mkdir ~/.npm-global;
npm config set prefix ~/.npm-global;
echo "export PATH='/home/deloitte/.npm-global/bin:$PATH'" >> ~/.profile;

## sourcing profile
source ~/.profile;

tput setaf 2; echo "npm prefix configuration done.";
echo "You are ready to rock";

tput setaf 7;
