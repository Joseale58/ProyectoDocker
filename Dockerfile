FROM UBUNTU
EXPOSE 80
RUN apt update
RUN apt install apache2 -y
RUN apt install git -y
RUN git clone https://github.com/Joseale58/ProyectoDocker.git
RUN mv ProyectoDocker/Miapp/ ProyectoDocker/html/
RUN rm -r /var/www/html/
RUN cp -r ProyectoDocker/html/ var/www/
CMD [apachectl -D FOREGROUND]