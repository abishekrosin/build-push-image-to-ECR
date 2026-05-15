# Use lightweight Nginx image
FROM nginx:alpine

# Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy HTML files
COPY index.html /usr/share/nginx/html/
COPY maison-templatemo.html /usr/share/nginx/html/

# Copy CSS and JS files
COPY templatemo-maison-style.css /usr/share/nginx/html/
COPY templatemo-maison-doree.js /usr/share/nginx/html/

# Copy images folder
COPY images/ /usr/share/nginx/html/images/

# Expose web port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
