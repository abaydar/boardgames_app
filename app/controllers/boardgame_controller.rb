class BoardgameController < ApplicationController

    
    get '/boardgames' do
        @boardgames = Boardgame.all
        erb :'boardgames/index'
    end


    get '/boardgames/:id' do
        @boardgame = Boardgame.find(params[:id])
      
        erb :'boardgames/show'
    end

end
