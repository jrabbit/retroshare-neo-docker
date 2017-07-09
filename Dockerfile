FROM ubuntu:yakkety

RUN apt-get update && apt-get install -y software-properties-common && \
	add-apt-repository -y ppa:retroshare/stable && \
	apt update && \
	apt install -y retroshare06
	
ENV HOME /home/user
RUN useradd --create-home --home-dir $HOME user \
	&& chown -R user:user $HOME
ENV LANG C.UTF-8

WORKDIR $HOME
USER user

CMD ['RetroShare06']