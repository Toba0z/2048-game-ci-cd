# Use Amazon ECR Public to avoid Docker Hub rate limits
FROM public.ecr.aws/nginx/nginx:alpine

# Copy site assets (adjust the source path if your game lives in a subfolder)
COPY . /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
