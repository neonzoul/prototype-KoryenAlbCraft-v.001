# Use nginx as the base image to serve static files
FROM nginx:alpine

# Copy all project files to nginx html directory
COPY index.html /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY multi_city_pricechecker.js /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# nginx will start automatically when container runs
CMD ["nginx", "-g", "daemon off;"]
