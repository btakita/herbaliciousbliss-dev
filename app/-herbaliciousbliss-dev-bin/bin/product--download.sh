#!/bin/sh
mkdir -p public/product
aws s3 cp s3://$PRODUCT_BUCKET/ public/product --recursive
