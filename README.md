# Roman Numeral Converter API Endpoint

## Quick Start

1. Clone this repo to your local environment.

2. Run `bundle install` to install required gems. If you don't have Bundler installed, you can install it with `gem install bundler`

3. To start your server, you can run the `rackup` command. You can also start it by running `bin/start-localhost-server.sh`, but be sure to make that file executable. `chmod -x bin/start-localhost-server.sh`

4. Once your server is running, you can curl localhost:8000 (or whichever port your server is using), or access in the browser. Specify the /convert route and pass in the numeral you want converted, like so: `curl localhost:8000/convert?roman=XVIII`

5. The server will then return a the converted numeral as a response. In this case 18.
