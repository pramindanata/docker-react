# Docker React

[![Build Status](https://travis-ci.org/pramindanata/docker-react.svg?branch=master)](https://travis-ci.org/pramindanata/docker-react)

Simple React app and deploy it to a VPS server using Travis CI and Docker. This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Flow

1. Push changes to Github.
2. Travis run tests stage.
3. Travis run deploy stage.

    Travis will send whole files via SSH from repository to the server and run `deploy.sh` to build and run new docker container.

**Note:**

Make sure to set `SERVER_IP` and `APP_PATH` to Travis environment variables. Detail:

- `SERVER_IP`: VPS server IP address.
- `APP_PATH`: app directory location on VPS server (ex: `/var/www/react`).

## References

- Learn how to make SSH works on Travis CI: <https://github.com/dwyl/learn-travis/blob/master/encrypted-ssh-keys-deployment.md>.
