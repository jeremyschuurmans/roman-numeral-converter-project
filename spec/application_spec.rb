require 'spec_helper'
require_relative '../app/application'

RSpec.describe Application, '#call' do
    def app()
        Application.new
    end

    it 'returns the proper value when passed a roman numeral via GET request' do
        get '/convert?roman=L'

        expect(last_response.status).to eq(200)
        expect(last_response.body).to include("50")    
    end
end