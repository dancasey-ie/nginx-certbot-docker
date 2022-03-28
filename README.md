NGINX-Certbot-Docker
=========================================================
Boilerplate code for setting up Nginx + Certbot (LetsEncrypt) using docker-compose. This is really for testing, playing and understanding (I hope).


## Why?
I found many repos and tutorials online for setting up LetsEncrypt SSL certificates for Nginx containers, but found them hard to follow and many wrapped important bits in automated scripts.

## Requirements

dependency | commands
--- | ---
docker | [commands for Debian / Ubuntu](https://gist.github.com/smallwat3r/a1664013e6ca8fb9ee02dd4b886a4996)
docker-compose | [commands for Debian / Ubuntu](https://gist.github.com/smallwat3r/05f4b4a7a8361901d23bfdd492e40870)

## Set up

Clone and enter the repo:
```bash
git clone https://github.com/dancasey-ie/nginx-certbot-docker
cd nginx-certbot-docker
```

Set your domain and email variables
```bash
export DOMAIN=example.com
export EMAIL=info@example.com
```

If you just want to run using non-secured http:
```bash
docker-compose -f compose-http.yml up # make up_http
```

If you want to run using https you first must run without https and ask Certbot for a certifcate:
```bash
docker-compose -f compose-init-ssl.yml up # make init_ssl
```
Exit with CTRL+C. Then run:
```bash
docker-compose -f compose-https.yml up # make up
```