#!/bin/sh

S3_BUCKET=scheduly
echo "Syncing with S3..."
s3cmd sync --cf-invalidate --delete-removed --acl-public --rexclude '.git\/*|sync-with-s3.sh' ./ s3://$S3_BUCKET
echo "Done..."
