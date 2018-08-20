require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'



get '/' do
  erb :about
end

get '/start' do
  erb '<h1> Start </h1>'
end

get '/visit' do
  erb :visit
end

post '/visit' do

  @name_ = params[:name_]
  @cell_number = params[:cell_]
  @date_time = params[:date_]

  @title = 'Thank you'
  @message = "#{@user_id} we will be waiting for you at #{@date_time}. Your cell #{@cell_number}"

  f = File.open './public/users.txt', 'a'
  f.write "user: #{@user_id}; cell: #{@cell_number}; date: #{@date_time}"
  f.close
  erb :visit

end


