FROM node:lts-buster

# Clone the repository into /root/YEST
RUN git clone https://github.com/popkidxtech/YEST.git /root/YEST

# Set working directory
WORKDIR /root/YEST

# Install dependencies
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1

# Expose port
EXPOSE 9090

# Start the bot with node index.js
CMD ["node", "index.js"]
