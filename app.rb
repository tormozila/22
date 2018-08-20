require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'



get '/' do
  erb :about
end

get '/start' do
  erb '<h1> Start </h1>'
end

get '/start2' do
  erb '<h1> Start2 </h1>'
end


