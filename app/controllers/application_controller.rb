class ApplicationController < Sinatra::Base

    configure do
        set :views, "app/views"
        set :public_dir, "public"
        enable :sessions
        set :session_secret, ENV.fetch('SESSION_SECRET'){SecureRandom.hex(64)}
    end

    get '/' do
        erb :index
    end

    helpers do 
        def logged_in?
            !!current_user
        end

        def login(username, password)
            user = User.find_by(username: username)
            if user && user.authenticate(password)
                session[:username] = user.username
            else
                redirect '/login'
            end
        end

        def current_user
            @current_user ||= User.find(session[:username]) if session[:username]
        end

        def logout
            session.clear
        end
    end



  end