FROM mkenney/npm:debian

#install ruby
RUN apt-get update && apt-get install -y ruby ruby-dev &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


#install latest compass
RUN gem install --no-rdoc --no-ri sass -v 3.4.21
RUN gem install susy -v 2.2.2
RUN gem install compass -v 1.0.3
