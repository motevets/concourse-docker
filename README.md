# Concourse Docker

Create [Docker](https://www.docker.com/) images to run [Concourse](http://concourse.ci) in.
See [here](https://github.com/concourse/bin) for more details.

## Usage

### Quick-start

See the [quick-start](quick-start) to get up and running with an (unsecure) setup to play with.

### Traditional setup

#### Generate private keys

Run `scripts/init` to create keys and download the concourse binary to be used by the web host and workers.

#### Environment variables

* `CONCOURSE_EXTERNAL_URL` - The URL to access concourse web at. Usually [http://192.168.99.100:8080](http://192.168.99.100:8080).
* `CONCOURSE_LOGIN` - Username to use for concourse basic auth.
* `CONCOURSE_PASSWORD` - Password to use for concourse basic auth.

Consider creating a [`.env`](https://docs.docker.com/compose/env-file/) file in the project root for `docker-compose` to use when building the containers.  For example:

    CONCOURSE_EXTERNAL_URL="http://192.168.99.100:8080"
    CONCOURSE_LOGIN="some_login"
    CONCOURSE_PASSWORD="super_secret"

#### Start Concourse

Run:
```
docker-compose up
```

Open the `CONCOURSE_EXTERNAL_URL` specified above ([http://192.168.99.100:8080](http://192.168.99.100:8080)) and start using concourse.

See [Using Concourse](https://concourse.ci/using-concourse.html) to get started.
