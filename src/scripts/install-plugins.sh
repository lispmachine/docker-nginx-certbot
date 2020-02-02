#!/bin/bash
set -ex

for plugin in $CERTBOT_PLUGINS; do
    case $plugin in
        route53)
            apt install -y awscli
            pip install -U certbot-dns-route53
            ;;
        *)
            echo "plugin $plugin not supported"
            ;;
    esac
done
