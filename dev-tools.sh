sudo apt-get install -y curl
sudo apt-get install -y php libapache2-mod-php php-mcrypt php-mysql php-cli
sudo apt-get install -y python-software-properties

#apache
sudo apt-get install -y apache2
sudo systemctl restart apache2

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
nvm install node
#curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
#sudo apt-get install -y nodejs

#idea
while true; do
    echo "Need Intellij IDEA? (y/n)"
    read -p ":" optIntellij
    case $optIntellij in
    	[Yy]* )
            cd ~
            mkdir Tools
            cd Tools
            wget https://download.jetbrains.com/idea/ideaIU-2017.1.3.tar.gz
            tar -xzvf ideaIU-2017.1.3.tar.gz
            rm ideaIU-2017.1.3.tar.gz
    	    break;;
    	[Nn]* ) break;;
        * ) echo "Invalid response.";;
    esac
done

# atom
sudo apt-get install software-properties-common python-software-properties
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom
