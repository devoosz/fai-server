Create the ${HOME}/docker-stack/guacamole/.env file to store the database credentials. Like this:

POSTGRES_PASSWORD='PleasePutAStrongPasswordHere'
POSTGRES_USER='guacamole_user'

The docker-compose.yml file also contains the declaration of two networks:

    guacamole_net: the docker network to isolate communication between the different guacamole services.
    haproxy_net: the docker network to link guacamole_frontend container and HAProxy container
Don’t forget to change files ownership

chown -R ${USER}:${USER} ${HOME}/docker-stack/

Now let’s bring everything up

docker compose -f ${HOME}/docker-stack/haproxy/docker-compose.yml up -d
docker compose -f ${HOME}/docker-stack/guacamole/docker-compose.yml up -d
Access Apache Guacamole Dashboard

You can now access the Apache Guacamole web interface using the URL http://your-fqdn/guacamole.
