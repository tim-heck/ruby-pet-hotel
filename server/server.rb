require 'sinatra'
require 'json'
require_relative '../app/main'
require_relative '../app/models/pets'

get '/api/pets' do
    Pets.all.to_json
end
