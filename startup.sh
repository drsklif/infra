#!/bin/bash

curl -sL https://github.com/drsklif/infra/raw/config-scripts/install_ruby.sh | bash -s
curl -sL https://github.com/drsklif/infra/raw/config-scripts/install_mongodb.sh | bash -s
curl -sL https://github.com/drsklif/infra/raw/config-scripts/deploy.sh | bash -s
