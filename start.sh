#!/bin/bash
rm -f tmp/pids/server.pid
useradd -m -p '*' nabinojha
chown -R nabinojha:nabinojha .
bundle
rails db:create
rails db:migrate
rails db:seed
rails assets:clobber
bundle exec foreman start -f Procfile.dev 
