# Porfolio API

**API endpoint docs** can be found [here](./API_docs.md)

## Table of Contents

- [Installation](#installation)
- [Renewing the SSL Cert](#renewing-the-ssl-cert)
  - [If It Has Not Expired](#if-it-has-not-expired)
  - [If It Has Expired](#if-it-has-expired)

### Installation

1. `bundle install`
1. `cp config/secrets.example.yml config/secrets.yml`
1. `cp config/database.example.yml config/database.yml`
1. `bundle exec rails db:setup`

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
1. (try the renew step before stopping any of monit processes, they may not be needed) `monit stop unicorn`
1. `monit stop nginx`
1. Renew

    ```
    cd ~/..
    ./opt/letsencrypt/certbot-auto renew --preferred-challenges http --standalone
    ```

1. `monit start unicorn`
1. `monit start nginx`
