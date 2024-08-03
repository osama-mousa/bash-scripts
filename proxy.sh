sudo su
sudo apt -y install proxychains
cd /etc
nano proxychains.conf
(dynamic_chain,Proxy DNS,socks5)
sudo apt -y install tor 
service tor start