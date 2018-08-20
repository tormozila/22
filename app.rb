require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'



get '/' do
  erb '<h2> About </h2>'
end

get '/start2' do
  erb 'Can you handle a secret'
end


