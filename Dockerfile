# Use the latest Ubuntu image
FROM ubuntu:latest

# Update and install required packages
RUN apt-get update && apt-get install -y \
    openssl \
    shellinabox

# Expose port for Shellinabox (4200)
EXPOSE 4200

# Start and enable Shellinabox service
CMD ["shellinaboxd", "-t", "-s", "/:LOGIN", "-p", "4200"]
