docker squid3
============
try this:
sudo docker build -t eg_squid
sudo docker run -d -P --name test_squid eg_squid
sudo docker port test_squid 9001

