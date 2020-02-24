require_relative '../lib/converter'

class Application
    def call(env)
        response = Rack::Response.new
        request  = Rack::Request.new(env)

        if request.path.match(/convert/)
            numeral = request.params["roman"]

            converted_numeral = Converter.new.convert_roman_to_arabic(numeral)

            response.status = 200
            response.write converted_numeral
            response.finish
        else
            response.status = 404
            response.write "Sorry, that route does not exist."
            response.finish
        end
    end

end