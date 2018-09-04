#!/bin/sh

USERNAME=$1
PUBLIC_KEY=$2
CREATOR="eosnationacc"
API="https://api.eosn.io"

# Create New Account
cleos system newaccount \
  $CREATOR $USERNAME $PUBLIC_KEY $PUBLIC_KEY \
  --stake-net "0.05 EOS" --stake-cpu "0.15 EOS" --buy-ram-kbytes 8 --transfer

# Transfer EOS to Account
cleos transfer $CREATOR $USERNAME "0.1 EOS" "Thanks for joining the EOS Nation community!"
