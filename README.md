# Archlinux setup
A simple collection of shell scripts to configure and setup different aspects of my Arch Linux installations.

### Following configurations topics:
- Terminal and Fish shell configuration
- Daily used applications installation
- Gaming setup with Wine, Proton, Lutris and more.

### To run each command you must provide authorization for them to run on your system by:
````bash
sudo chmod +x ./terminal-setup.sh ; 
sudo chmod +x ./fish-setup.sh ; 
sudo chmod +x ./application-setup.sh ; 
sudo chmod +x ./gaming-setup.sh
````

After making each script executable just run the ones you are interested by:

````bash
./terminal-setup.sh
````

Fell free to fork and change the scripts to attend to your needings!

# Docker setup
A simple docker-compose script to setup my databases and other stuff i run on docker

### Services available on the script: 

- RabbitMQ and RabbitMQ manager (Microservices messaging broker)
- Apache Kafka server and Zookeeper service (Microservices messaging broker)
- MySQL 
- PostgreSQL
- Microsoft SQL Server
- MongoDB
- Redis

# Setup steps

If you are using some Linux distribution like me, you can use your package manager to download the following dependencies: Docker, docker-compose and git (if it doesn't already come builtin in your system).

I gonna use Arch Linux's package manager pacman for the instructions.


### Update your packages and system modules:

````bash
sudo pacman -Suuy
````

### Install Docker engine, docker-compose and Git:

````bash
sudo pacman -S docker docker-compose git
````

### Enable Docker background service on your system: 
````bash
sudo systemctl enable docker.service
````

### Start Docker background service on your system:
````bash
sudo systemctl start docker.service
````

### And finally, check if it is properly running on your system:
````bash
sudo systemctl status docker.service
````

### You should get a prompt similar to this one:

![image](https://user-images.githubusercontent.com/84593887/229303530-7ea4dd4c-8a37-4038-bff9-6286220c7c6a.png)

### Clone my repository to your machine using git:

````bash
git clone https://github.com/athirsonsilva/docker-setup
````

### Go to the project working directory:

````bash
cd docker-setup
````

### Run docker compose command to pull all images and create their respectives docker containers:

````bash
sudo docker-compose up -d
````

If your want to read the logs of each container and see what is going on in each process you can simply ommit the -d commant

### After running the docker compose command check if all the containers are running:

````bash
sudo docker ps -a
````

### And see a result similar to this but with:

![image](https://user-images.githubusercontent.com/84593887/229304038-5cf979a0-efa7-4242-80b1-31cb6cff5fc7.png)

### To start all container you can run this command on your terminal:

````bash
sudo docker start broker zookeeper postgres mysql rabbitmq mongo mssql redis
````
### If you want to start only a specific container you can only pass it's name. To stop a container you can swap the "start" command to "stop".

Then you can test if your databases are accepting connections using some database explorer tool like DBeaver and MongoDB Compass and see a result similar to this one:

![Screenshot_20230401_131946](https://user-images.githubusercontent.com/84593887/229304204-40d46770-ea14-4401-b646-54b2cab218e9.png)
![Screenshot_20230401_132115](https://user-images.githubusercontent.com/84593887/229304207-3f4fb808-96fa-4644-a2a5-cb499c176a8d.png)

