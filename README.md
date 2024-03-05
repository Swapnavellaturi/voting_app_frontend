# Voting App Frontend

This repository hosts the frontend component of a simple voting application, designed to interact with its backend counterpart to enable users to cast votes and view the results in real time. The frontend is built with simplicity in mind, ensuring ease of deployment and use.

## Prerequisites

Before deploying the frontend, ensure you have the following:
- An Ubuntu server (e.g., AWS EC2 instance)
- Git installed on your server
- Nginx installed on your server
- Environmental variables `BACKEND_HOST` and `BACKEND_PORT` set to point to your backend service

## Deployment

To deploy the frontend of the voting application on your Ubuntu server and configure it to connect with the backend service, follow these steps:

1. **Clone the Repository**

Navigate to your desired directory on your server and clone this repository:

```bash
git clone https://github.com/Swapnavellaturi/voting_app_frontend.git
cd voting_app_frontend
```

2. **Configure Backend Connection**

Set the backend service's host and port by replacing `<your_backend_host>` and `<your_backend_port>` with your actual backend service's host and port:

```bash
export BACKEND_HOST=<your_backend_host>
export BACKEND_PORT=<your_backend_port>
```

Ensure these are set before proceeding to the next step to correctly configure the connection in your deployment.

3. **Run Deployment Script**

Execute the provided script to automatically set up Nginx and deploy the frontend files. This script will adjust the `index.html` to use the specified backend host and port, and then configure Nginx to serve the frontend:

```bash
chmod +x setup_nginx_and_deploy_frontend.sh
./setup_nginx_and_deploy_frontend.sh
```

After running the script, your frontend should be accessible through your server's public IP address or domain name.

## Accessing the Application

Once deployed, open your web browser and navigate to your server's public IP address or domain name. You should see the voting application's frontend, ready to interact with the backend service.
