1. Install newest Docker and run docker swarm init
2. Point plone.traefik to 127.0.0.1 in your /etc/hosts file
3. Run make
4. Go to http://plone.traefik/

Portainer UI: http://localhost:9000/
Traefik UI: http://localhost:8080/

With Docker 17.04 make sure the experimental features are enabled. Do the following:
add/edit the
/etc/docker/daemon.json
and include:
{
“experimental”: true
}
