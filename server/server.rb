require 'sinatra'
require 'json'
require_relative '../app/main'
require_relative '../app/models/pet'
require_relative '../app/models/owner'

get '/api/pets' do
    payload = Pet.joins(:owner)
    payload.to_json(:include => {:owner => {}})
end

get '/api/owners' do
    Owner.all.to_json
end

post '/api/pets' do
    client_request = JSON.parse(request.body.read)
    pets = Pet.new(owner_id: client_request["owner_id"], name: client_request["name"], breed: client_request["breed"], color: client_request["color"], checked_in: client_request["checked_in"]) 
    pets.save!

    if pets.save
        status 201
    else
        status 500
    end
end


post '/api/owners' do
    Owner.all.to_json
end