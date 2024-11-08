# Use base image
FROM mysterysd/wzmlx:heroku

# Set the working directory
WORKDIR /usr/src/app

# Set permissions for the app directory
RUN chmod 755 /usr/src/app

# Copy all files from the current directory to the container's working directory
COPY . .

# Install dependencies from requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Run the application
CMD ["bash", "start.sh"]
