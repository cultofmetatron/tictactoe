#sessions controller
class SessionsController < Sinatra::Base

    get '/' do
        redirect '/sessions/login'
    end

    get '/login/?' do
        "current session"
    end

    #create session
    post '/create' do
        ""
    end

    #destroy the session
    delete '/destroy' do

    end

end


