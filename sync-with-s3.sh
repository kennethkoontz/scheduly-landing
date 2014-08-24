#!/bin/sh

S3_BUCKET=scheduly

cat .gitignore .s3ignore > .allignore
cat .allignore

echo "Syncing with S3..."

s3cmd sync --cf-invalidate --delete-removed --acl-public --exclude-from .allignore ./ s3://$S3_BUCKET

rm -f .allignore

echo "Done..."
