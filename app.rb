require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/latin" do
    @latinized = PigLatinizer.new(params[:user_text])
    erb :latin
  end


end
