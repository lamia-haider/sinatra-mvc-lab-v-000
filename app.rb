require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/latin" do
    @latinized = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :latin
  end


end
