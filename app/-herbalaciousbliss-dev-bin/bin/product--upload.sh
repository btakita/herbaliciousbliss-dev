#!/bin/sh
aws s3 cp public/product s3://$PRODUCT_BUCKET/ --recursive
