FROM node:22

WORKDIR /app

# Install dependencies (we'll install them in the container, not on the host)
COPY package*.json ./
RUN npm install

# Create a user and group with the same UID/GID as your host user
# (replace 1000 with your actual UID/GID)
RUN groupadd -g 1000 appuser && \
    useradd -u 1000 -g appuser -m appuser

# Switch to the appuser user
USER appuser

# Expose port 3000
EXPOSE 3000

# The entrypoint script will handle starting your application
ENTRYPOINT ["/entrypoint.sh"]