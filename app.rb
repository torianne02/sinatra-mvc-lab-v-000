require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/' do
    @user_phrase = params[:user_phrase]
  end

  post '/piglatinize' do
    
  end
end
