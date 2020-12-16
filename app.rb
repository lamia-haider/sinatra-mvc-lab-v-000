require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/" do
    @latinized = PigLatinizer.new(params[:user_input])
    erb :latins
  end


end
