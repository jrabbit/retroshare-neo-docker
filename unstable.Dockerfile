FROM ubuntu:yakkety

RUN apt-get update && apt-get install -y software-properties-common && \
	add-apt-repository -y ppa:retroshare/unstable && \
	apt update && \
	apt install -y retroshare06 adwaita-qt
	
ENV HOME /home/user
RUN useradd --create-home --home-dir $HOME user \
	&& chown -R user:user $HOME
ENV LANG C.UTF-8

WORKDIR $HOME
USER user
