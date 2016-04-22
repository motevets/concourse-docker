# Concourse Docker

Create [Docker](https://www.docker.com/) images to run [Concourse](http://concourse.ci) in using the [concourse binary](https://github.com/concourse/bin).

## Usage

### Prebuild setup

Run `scripts/init` to create keys and download the concourse binary to be used by the web host and workers.

#### Environment variables

    CONCOURSE_EXTERNAL_URL  the URL to access concourse web at; usually http://192.168.99.100:8080
    CONCOURSE_LOGIN         username to use for concourse basic auth
    CONCOURSE_PASSWORD      password to use for concourse basic auth

Modify the [`.env`](https://docs.docker.com/compose/env-file/) file in the project root for `docker-compose` to use when building the containers.  For example:

    CONCOURSE_EXTERNAL_URL="http://192.168.99.100:8080"
    CONCOURSE_LOGIN="some_login"
    CONCOURSE_PASSWORD="super_secret"

### Build container and start concourse

Run:

    docker-compose up

Open the `CONCOURSE_EXTERNAL_URL` specified above ([http://192.168.99.100:8080](http://192.168.99.100:8080)) and start using concourse.

## Further reading

See [Using Concourse](https://concourse.ci/using-concourse.html) to get started with Concourse.
