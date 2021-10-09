#!/bin/bash
SSL_DIR=$1
if [ -e $SSL_DIR"/cert.pem" -a -e $SSL_DIR"/privkey.pem" ]; then
  echo 'El certificado existe:'
  echo $SSL_DIR"/cert.pem" $SSL_DIR"/privkey.pem"
else
  echo 'Create self signed certificate to start servers'
  openssl req -subj '/CN=aruljohn.com/O=Arul John/C=US' -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out $SSL_DIR/cert.pem -keyout $SSL_DIR/privkey.pem 
fi
