daemon off;
pid /var/lib/nginx/nginx.pid;

events {
  worker_connections 1024;
}

http {
  include /etc/nginx/mime.types;
  index index.html;

  server {
    listen *:80;
    
    location / {
      root /www-data;
    }
  }
}
