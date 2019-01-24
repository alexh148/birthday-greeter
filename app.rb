require 'sinatra/base'

class BirthdayGreeter < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name_and_birthday' do
    @birth_day = params[:day]
    @birth_month = params[:month]
    @name = params[:name]
  end

  run! if app_file == $0
end
