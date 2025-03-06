FROM ubuntu:latest
RUN apt update && apt install -y nginx && apt clean

# Copy the static website files to the Nginx HTML directory
COPY . /var/www/html

# Expose port 80 to allow traffic to the web server
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
