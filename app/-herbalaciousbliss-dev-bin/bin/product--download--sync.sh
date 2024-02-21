#!/bin/sh
mkdir -p public/product
aws s3 sync s3://$PRODUCT_BUCKET/ public/product
