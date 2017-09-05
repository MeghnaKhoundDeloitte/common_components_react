# remove previous instance of node versions
tput setaf 1; echo "Removing your older version of node";
tput setaf 7;
sudo apt-get purge --remove -y nodejs npm

tput setaf 2; echo "Older version of node removed";

tput setaf 1; echo "Beginning configuration for node debian download";
tput setaf 7;
##creating a nodesource.list, to make the debian source to point to correct node version distributon
touch /etc/apt/sources.list.d/nodesource.list

## Writign the debian node source to nodesource.list
cat "deb https://deb.nodesource.com/node_6.x xenial main deb-src https://deb.nodesource.com/node_6.x xenial main" >> /etc/apt/sources.list.d/nodesource.list

echo "Downloading nodesource debian GPG signing key";
## Downloading nodesource GPG signing key
curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -
tput setaf 2; echo "GPG signing key download failed, that's fine lets not crib about it "

tput setaf 1; echo "Updating your package essentials, this might take sometime";
tput setaf 7;
## update the essentials, to prepare for node upgrade
sudo apt-get -y update

tput setaf 1; echo "Installing node version 6, on your machine";
tput setaf 7;
## installing node 6 version
sudo apt-get install -y --force-yes nodejs

tput setaf 2; echo "Node installed on your machine";
echo "Node version installed:" `node -v `;

tput setaf 7;
