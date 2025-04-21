# Install dependencies
sudo dnf install -y git make perl-YAML perl-JSON nfs-utils
git clone https://github.com/faiproject/fai.git
cd fai
sudo make install
