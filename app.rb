require 'sinatra/base'

class BirthdayGreeter < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name_and_birthday' do
    session[:day] = params[:day]
    session[:month] = params[:month]
    session[:name] = params[:name]
    redirect '/greeter'
  end

  get '/greeter' do
    @day = session[:day]
    @month = session[:month]
    @name = session[:name]
    erb(:greeter)
  end

  run! if app_file == $0
end
