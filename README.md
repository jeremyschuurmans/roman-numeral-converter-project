# Roman Numeral Converter API Endpoint

## Quick Start

1. Clone this repo to your local environment.
1. Make sure you have Ruby installed by running `ruby -v`
1. Run `bundle install` to install required gems. If you don't have Bundler installed, you can install it with `gem install bundler`

## Command Line Usage

Run `./bin.convert` passing in the roman numeral you would like to convert as an argument, like so:

    `./bin/convert <numeral>`

## API Usage

To start your server, run the `rackup` command. You can also start it by running `bin/start-localhost-server.sh`, but be sure to make that file executable. `chmod -x bin/start-localhost-server.sh`

Once the server is running, you can curl localhost:8000 (or whichever port your server is using), or access in the browser. Specify the /convert route and pass in the numeral you want converted, like so: `curl localhost:8000/convert?roman=XVIII`

The server will then return a the converted numeral as a response. In this case 18.
