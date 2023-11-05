#!/bin/bash
rm -f tmp/pids/server.pid
bundle
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed
bundle exec foreman start -f Procfile.dev 
