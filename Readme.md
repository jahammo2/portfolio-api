# Porfolio API

**API endpoint docs** can be found [here](./API_docs.md)

## Renewing SSL cert

### If it has not expired yet

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
