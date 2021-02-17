class ApplicationController < Sinatra::Base

    configure do
        set :views, "app/views"
        set :public_dir, "public"
        enable :sessions
        set :session_secret, ENV.fetch('SESSION_SECRET'){SecureRandom.hex(64)}
    end

    get '/boardgames' do
        @boardgames = Boardgame.all
        erb :index
    end


    get '/boardgames/:id' do
        @boardgame = Boardgame.find(params[:id])
      
        erb :show
    end

  end