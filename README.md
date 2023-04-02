# sit323_737-2023-t1-prac5p

Containerization
=============================

## Steps to Run the Project
 * Clone the Repository using the Repo URL;
 * run command `npm install`;
 * run command `nodemon index.js`;

 ## Steps to Cerate a Docker Image
 * docker build -t myapp1 .

 ## Steps to See all Docker Image
 * docker image list

 ## Step to run the build docker
 * docker run -d -p 5006:3000 --name healthcheck1 myapphealthcheck

 ## TO see all running docker
 * docker ps -a

 ## To run docker compose file
 * docker-composer up

 ## steps to push docker image to a registry
 * docker tag myapphealthcheck:latest navindharmaraj/myapphealthcheck:latest
 * docker push <username>/myapphealthcheck

