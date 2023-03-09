# Porfolio API

**API endpoint docs** can be found [here](./API_docs.md)

## Table of Contents

- [Installation](#installation)
- [Renewing the SSL Cert](#renewing-the-ssl-cert)
  - [If It Has Not Expired](#if-it-has-not-expired)
  - [If It Has Expired](#if-it-has-expired)
- [Miscellaneous](#miscellaneous)
- [Common Errors to Deal With Now](#common-errors-to-deal-with-now)

## Installation

1. `bundle install`
1. `cp config/secrets.example.yml config/secrets.yml`
1. `cp config/database.example.yml config/database.yml`
1. `bundle exec rails db:setup`

## Deployment

1. Push up code here and in the web client to master
1. `tape ansible deploy -l staging`

## Local Development

1. `rails s`
1. In the web client, `npm run start`
1. Visit []()

## Renewing the SSL Cert

### If it has not expired

1. `ssh root@162.243.114.222`
1. Renew

    ```
    cd ~/..
    ./opt/letsencrypt/certbot-auto certificates
    ```

### If it has expired

1. `ssh root@162.243.114.222`
1. (*Maybe*. Try the renew step before stopping any of monit processes, they may not be needed) `monit stop unicorn`
1. `monit stop nginx`
1. Renew

    ```
    cd ~/..
    ./opt/letsencrypt/certbot-auto renew --preferred-challenges http --standalone
    ```

1. `gem install tape -v 1.5.5` (and remove/switch versions if need be)
1. `brew install ansible`
1. `tape ansible deploy`

## Common Errors to Deal With Now

### ProjectsController error

Yeah, this is fairly old code so just it's better just to work around these instead of changing things.

```
Processing by Api::SocialLinksController#index as JSON
LoadError (Unable to autoload constant Api::ProjectsController, expected /Users/jordanhammond/personal/portfolio-api/app/controllers/api/projects_controller.rb to define it):
```

In this case, it only happens locally. You can deploy just fine

## Miscellaneous

On Digital Ocean, the corresponding web server is "portfolio--staging"


