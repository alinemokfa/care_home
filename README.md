# Care Home Management System
Web based care home management system that allows the user to manage a list of rooms and the residents who occupy them.

## Prerequisites
Ruby version: 2.5.1 (x86_64-darwin17)

Rails version: 5.2.1

## To download and run:
In a terminal window, type:

    git clone https://github.com/alinemokfa/rails_care_home.git (for HTTPS) or git clone git@github.com:alinemokfa/rails_care_home.git (for SSH)

    cd rails_care_home

    bundle install

    bin/rails db:migrate

    bin/rails db:seed

    bin/rails server

Now please visit `http://localhost:3000` in your browser.

## To run tests:
In a terminal window, type:

    cd app

    rails test
