# Use official lightweight Nginx image
FROM nginx:alpine

# Copy your website files into Nginx's default public folder
# This ensures index.html is directly at the root
COPY spotify/ /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]


