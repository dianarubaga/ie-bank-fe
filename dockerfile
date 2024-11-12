# Build stage
FROM node:lts-alpine AS build-stage
  
# Declares a build-time variable named MODE
ARG MODE

# Set the working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

ENV VUE_APP_ROOT_URL=http://localhost:5001

# Build the app with the specified mode
RUN npm run build -- --mode ${MODE}

# Production stage
FROM nginx:stable-alpine AS run-stage

# Copy the built app from the build stage to the Nginx HTML directory
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
