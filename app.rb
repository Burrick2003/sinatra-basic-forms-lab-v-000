require_relative 'config/environment'

class App < Sinatra::Base
  GET '/' do
    erb :index
  end

  GET '/new' do
    erb :create_puppy
  end

  POST '/puppy' do
    @name=params['name']
    @breed=params['breed']
    @age=params['age']
  end

end
