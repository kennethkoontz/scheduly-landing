#!/bin/sh

S3_BUCKET=scheduly
echo "Deploying to S3..."
s3cmd sync --delete-removed --acl-public --rexclude '.git\/*|hooks\/' ./ s3://$S3_BUCKET
