#users controller
class UserController < Sinatra::Base
    #here is where users are defined

    get '/' do
        "I did it!!"
    end

    #create a  user
    post '/create' do
        if params
            params[:username]
        end
    end

    get '/sign_up' do
        haml :sign_up
    end

end

