# EC2 User Data Web Server with Hostname Display

This project demonstrates how to automatically install and configure a web server on an AWS EC2 instance using **boot (user data) scripting**.  
The web page dynamically displays the **instance hostname**, proving successful automated deployment.

---

## Project Overview

When an EC2 instance is launched, a startup script (user data) will:

- Install Apache Web Server
- Start and enable the service
- Create a simple web page
- Display the EC2 instance hostname dynamically

This is useful for:
- AWS automation practice
- DevOps learning
- Understanding EC2 bootstrapping
- Simple infrastructure testing

---

## Technologies Used

- AWS EC2
- Amazon Linux 2 / Ubuntu
- Apache HTTP Server
- Bash Scripting
- HTML

## How to Deploy
- Go to AWS EC2 Console
- Click Launch Instance
- Choose:
 Amazon Linux 2 or Ubuntu
 Expand Advanced Details
 Paste the User Data script
 Launch the instance
 Allow HTTP traffic (Port 80) in Security Group
 - Access in browser:
   http://EC2-PUBLIC-IP

## Expected Output When you open the browser:

Welcome to EC2 Web Server  <br>
Hostname: hostname
