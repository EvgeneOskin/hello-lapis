# Hello lapis

This is a project with a web application for a single purpose:
try out [lapis](http://leafo.net/lapis/).

## Features

The feature list of lapis is quite complete, you should take a
look at the [homepage example](http://leafo.net/lapis/).

This project provide a welcome page and dummy login page. The login
page add the email to the session, welcome page render the
email from the session.

This project use the next features:

- csrf protection
- http methods
- routing
- html templates
- session
- redirect

## Deployment

I use [docker](https://docker.com/) to run it:

```bash
$ make build
# build a docker image
$ make up
# Start a container with the application
```
