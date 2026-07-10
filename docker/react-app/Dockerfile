# syntax=docker/dockerfile:1

ARG NODE_VERSION=24

FROM node:${NODE_VERSION}-alpine

# Install curl for health checks.
RUN apk add --no-cache curl

# Use production node environment by default.
# ENV NODE_ENV production

# Change working directory to app.
WORKDIR /app

# Change ownership of directory app to user node.
RUN chown node:node /app

# Run the application as a non-root user.
USER node

# Download dependencies as a separate step to take advantage of Docker's caching.
# Leverage a cache mount to /root/.npm to speed up subsequent builds.
# Leverage a bind mounts to package.json and package-lock.json to avoid having to copy them into
# into this layer.
RUN --mount=type=bind,source=package.json,target=package.json \
    --mount=type=bind,source=package-lock.json,target=package-lock.json \
    --mount=type=cache,target=/root/.npm \
    npm ci --include=dev
# npm ci --omit=dev

# Copy the rest of the source files into the image.
COPY --chown=node:node . .

# Expose the port that the application listens on.
EXPOSE 5173

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \ 
    CMD curl -f http://localhost:5173/health || exit 1

# Run the application.
CMD ["npm", "run", "dev"]
