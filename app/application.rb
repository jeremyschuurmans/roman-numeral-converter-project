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

            result = @converter.convert_roman_to_arabic(numeral)

            response.status   = 200
            response.write JSON.generate({ :value => result })
            response.finish
        else
            response.status   = 404
            response.write "Sorry, that route does not exist."
            response.finish
        end
    end

end