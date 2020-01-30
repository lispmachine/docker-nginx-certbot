#!/bin/bash
set -e
IFS=$'\t\n'

set -x
for plugin in echo "$CERTBOT_PLUGINS" | sed -e 's/:/\n'; do
    case $plugin in
        route53)
            apt install -y awscli
            pip install -U certbot-dns-route53
            ;;
    esac
done
