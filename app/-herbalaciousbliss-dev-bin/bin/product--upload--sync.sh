#!/bin/sh
aws s3 sync public/product s3://$PRODUCT_BUCKET/
