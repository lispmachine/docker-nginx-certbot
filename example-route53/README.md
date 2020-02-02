# Example of nginx configuration with wildcard certificate

It uses `dns_route53` plugin to request wildcard certificate.

It requires AWS credentials to prove you have control over domain.

You can put them in separate docker-compose file.

```yaml
version: '3.2'
services:
  nginx:
    environment:
      AWS_ACCESS_KEY_ID: AWS access key id
      AWS_SECRET_ACCESS_KEY: key secret
```

TODO docker secrets

Read more: https://certbot-dns-route53.readthedocs.io/en/stable/#credentials
