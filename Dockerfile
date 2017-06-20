FROM ubuntu:16.04

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y default-jre

RUN apt-get install -y git python2.7 python unzip wget tcpdump ngrep vim

RUN cd /root \
       && git clone https://github.com/mmerchant/SigPloit.git

RUN /bin/bash /root/SigPloit/installer.sh

RUN chmod +x /root/SigPloit/bin/*.py

ENV PATH="/root/SigPloit/bin:${PATH}"

CMD ["SiGploit.py"]