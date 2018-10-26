#!/usr/bin/env bash
# set -x

PWD=`pwd`
app="telegraf-os"
version=`grep 'version =' telegraf-os/default/app.conf | awk '{print $3}' | sed 's/\.//g'`

tar -czf ${app}_${version}.tgz telegraf-os --exclude=telegraf-os/local --exclude=telegraf-os/metadata/local.meta --exclude=telegraf-os/lookups/lookup_file_backups
echo "Wrote: ${app}_${version}.tgz"

exit 0
