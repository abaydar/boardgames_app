class UserController < ApplicationController

    get '/users/new' do
        erb :'users/new'
    end

    post '/users' do 
        @user = User.new
        @user.username = params[:username]
        @user.email = params[:email]
        @user.password = params[:password]
        if @user.save
            redirect '/login'
        else
            erb :"users/new"
        end
    end


end
