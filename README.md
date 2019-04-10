#### Few remarks

My way of binding "Django+PostgreSQL+Docker" is probably not a good one. However, I find this pretty simple to use with small projects and basically it was created for educational purposes.

---

### Building and Running
As soon as you clone this repo, you could esasily build a container and run it . Basically, we need all necessary images from [https://www.docker.com/](Dockerhub) to build our local one.  We use the _Dockerfile_ to tell Docker how to build our image. Then we run our actual project within a container. The _docker-compose.yml_ file provides additional information for how our Docker container should behave in production. To build and run a container we need to execute command `docker-compose up -d --build`. It builds an image and runs a container as a daemon. However, you may not to use `-d` option, to be sure, that everything works correctly, looking at building-process in your terminal. 

If everything works correctly, we can visit "Django starting page", opening _127.0.0.1:8001_ in our browser. 
If you decide to shutdown the container, you have to type `docker-compose down` in your terminal. To run the container again type `docker-compose up -d`. 

---

**P.S.**
I'm intended to use 8001 port, because I have working Nginx in my machine, that works on 8000 port.
