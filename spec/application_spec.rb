require 'spec_helper'
require_relative '../app/application'

RSpec.describe Application, '#call' do
    def app()
        Application.new
    end

    it 'returns 50 when passed L via GET request' do
        get '/convert?roman=L'

        expect(last_response.status).to eq(200)
        expect(last_response.body).to include("50")    
    end

    it 'returns 49 when passed XLIX via GET request' do
        get '/convert?roman=XLIX'

        expect(last_response.status).to eq(200)
        expect(last_response.body).to include("49")
    end

    it 'returns 30 when passed XXX via GET request' do
        get '/convert?roman=XXX'

        expect(last_response.status).to eq(200)
        expect(last_response.body).to include("30")
    end
end