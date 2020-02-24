require_relative '../lib/converter'

class Application
    attr_reader :converter

    def initialize(converter = Converter.new)
        @converter = converter
    end

    def call(env)
        response = Rack::Response.new
        request  = Rack::Request.new(env)

        if request.path.match(/convert/)
            numeral = request.params["roman"]

            converted_numeral = @converter.convert_roman_to_arabic(numeral)
            result            = JSON.parse(converted_numeral)

            response.status   = 200
            response.write "\n"
            response.write result["value"]
            response.write "\n"
            response.finish
        else
            response.status   = 404
            response.write "Sorry, that route does not exist."
            response.finish
        end
    end

end