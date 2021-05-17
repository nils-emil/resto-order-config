sudo apt update
sudo apt install nginx
sudo apt-get install docker-compose
sudo gpasswd -a ubuntu docker
sudo apt install letsencrypt
sudo certbot certonly --standalone --agree-tos --preferred-challenges http -d tellimus.com
sudo certbot certonly --standalone --agree-tos --preferred-challenges http -d admin.tellimus.com