FROM node:22.11.0-alpine AS backend-dev

WORKDIR /app

# Copy the root package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install --force

# Copy the project files
COPY Backend/ ./Backend/
COPY Frontend/ ./Frontend/

COPY config.env .

EXPOSE 3000

# Set the base command to run the chosen app
CMD ["sh", "-c", "npm run start"]
