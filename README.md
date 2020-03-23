# Roman Numeral Converter API Endpoint

## Quick Start

1. Clone this repo to your local environment.
1. Make sure you have Ruby installed by running `ruby -v`
1. Run `bundle install` to install required gems. If you don't have Bundler installed, you can install it with `gem install bundler`

## Command Line Usage

Run `./bin/convert-roman` passing in the roman numeral you would like to convert as an argument, like so:

```
./bin/convert-roman <numeral>
```

You can also add `bin` to your path with `export PATH=$(pwd)/bin:$PATH` to make the tool available anywhere on your OS.

## API Usage

To start your server, run `rackup`.

Once the server is running, you can curl localhost:9292 (or whichever port your server is using), or access in the browser. Specify the /convert route and pass in the numeral you want converted, like so: `curl localhost:9292/convert?roman=XVIII`

The server will then return the converted numeral in a JSON response.

```
{
    "value": 18
}
```
