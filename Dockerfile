# Use an official ubuntu runtime as a parent image
FROM centos:7.6.1810

WORKDIR /setup

# Copy the current directory contents into the container at /app
COPY . /setup

# Install any needed packages specified in requirements.txt
RUN /setup/setup.sh

# Make port 22 available to the world outside this container
EXPOSE 22

# Run bash when the container launches
CMD ["/usr/sbin/init"]
