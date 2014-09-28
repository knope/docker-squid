# squid3
#
# VERSION               1.0.1

FROM     ubuntu:14.04
MAINTAINER whoknows@whatever
RUN echo "enter your IP xxx.xxx.xxx.xxx/##:"
RUN read MYIPsub
RUN apt-get update && apt-get install -y squid
RUN sudo service squid3 stop
RUN echo 'root:screencast' | chpasswd
RUN cp /etc/squid3/squid.conf cp /etc/squid3/squid.conf.original
RUN echo "http_port 9001">/etc/squid3/squid.conf;echo "visible_hostname oVer9000">>/etc/squid3/squid.conf;echo "acl mynet src $MYIPsub">>/etc/squid3/squid.conf;echo "http_access allow mynet">>/etc/squid3/squid.conf
RUN sudo service squid3 start

EXPOSE 9001
CMD ["/usr/sbin/squid3", "-"]
