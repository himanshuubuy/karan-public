FROM ubuntu:20.04 

# Install Nginx.
RUN \
  apt-get -y update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
   chown -R www-data:www-data /var/lib/nginx

# Define working directory.
WORKDIR /etc/nginx


# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80


