#!/bin/bash
# script to generate and upload surreystairs.co.uk to nimbus
rm -rf /tmp/jekyllbuild
bundle exec jekyll build -d /tmp/jekyllbuild
rsync -avzPhc --stats /tmp/jekyllbuild/* bob@nimbus.geekcloud.com:web/vhosts/surreystairs.co.uk/
