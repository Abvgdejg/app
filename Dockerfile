#FROM ubuntu:22.04
FROM ruby
#RUN apt-get update && apt install gnupg2 curl -y
#RUN gpg2 --keyserver keyserver.ubuntu.com --recv-keys \ 
#    409B6B1796C275462A1703113804BB82D39DC0E3 \
#    7D2BAF1CF37B13E2069D6956105BD0E739499BDB
#RUN curl -sSL https://get.rvm.io | bash -s stable

#RUN echo "source /etc/profile.d/rvm.sh" >> ~/.bashrc
#RUN . /etc/profile.d/rvm.sh
#ENTRYPOINT ["usr/local/bin/entryrvm.sh"]

#RUN rvm pkg install openssl \
#    && rvm autolibs rvm_pkg \
#    && rvm install 3.0.0 \
#    && rvm use 3.0.0
WORKDIR /app/blog
COPY ./app/blog/ /app/blog
RUN gem install rails && gem install bundler && bundle install



#COPY entrysql.sh /usr/local/bin/
#ENTRYPOINT ["usr/local/bin/entrysql.sh"]
