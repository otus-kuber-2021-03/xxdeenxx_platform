#!/bin/bash

helm repo add --username admin --password Harbor12345 templating https://harbor.34.66.54.91.sslip.io/chartrepo
helm push --username admin --password Harbor12345 kubernetes-templating/frontend/ templating
helm push --username admin --password Harbor12345 kubernetes-templating/hipster-shop/ templating