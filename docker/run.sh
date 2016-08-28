#!/bin/bash

# Setup the db if needed
if [ -n ${ENVIRONMENT} ]; then
    if [ ! -f db/${ENVIRONMENT}.sqlite3 ]; then
        rake db:setup
    fi
fi

git pull
git checkout docker

# Run the migrations
rake db:migrate

# Install bower dependencies
/node_modules/bower/bin/bower install --allow-root

# Run the server
rails server -b 0.0.0.0 -p 3000 -e ${ENVIRONMENT}
