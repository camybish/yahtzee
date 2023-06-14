require "sinatra/base"
require "sinatra/reloader"
require 'sinatra/flash'
require_relative 'lib/yahtzee.rb'

# DatabaseConnection.connect

class Application < Sinatra::Base
  enable :sessions
  # enable Sinatra::Flash
  register Sinatra::Flash

  configure :development do
    register Sinatra::Reloader
    
  end

  get '/' do 
    return erb(:homepage)
  end

  get '/start' do
    @dice_roll = [1,2,3,4,5]
    return erb(:start_game)
  end
end