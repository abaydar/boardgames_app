class ApplicationController < Sinatra::Base

    configure do
        set :views, "app/views"
        #set :public_dir, "public"
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