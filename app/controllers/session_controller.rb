class SessionController < ApplicationController

    get '/login' do 
        erb :'sessions/login'
    end

    post '/sessions' do
       login(params[:username], params[:password])
       redirect '/boardgames'
    end


end
