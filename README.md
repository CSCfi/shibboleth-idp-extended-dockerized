# Shibboleth IdP Proxy

This image uses mod_auth_openidc reverseproxy and shibboleth-idp image. These images adds full proxy support to shibboleth-idp so that via apache and mod_auth_openidc oidc RP will be bundled in.

## Build images
```
cd shibboleth-idp-proxy-dockerized
docker-compose build (up --build can be used instead if you wanna skip swarm)
```
## Deploy
```
docker swarm init ( if not initilized already )
docker stack deploy --compose-file docker-compose.yml myaaistack
```

