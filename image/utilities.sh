#!/bin/bash
set -e
source /pd_build/buildconfig

## Many Ruby gems and NPM packages contain native extensions and require a compiler.
run minimal_apt_get_install build-essential
## Bundler has to be able to pull dependencies from git.
run minimal_apt_get_install git

## Install wkhtmltopdf from Github
run curl -fsSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz -o wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
run tar xf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
run mv wkhtmltox/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf
run rm -rf wkhtmltox*