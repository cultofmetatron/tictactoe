require 'bundler/setup'
require 'sinatra/base'
require './lib/tictactoe'
require './lib/models'
require 'haml'


# this wil be a  tic tac toe game with some basic resources
# 1 a tictactoe board represented with strings
# board indexes   123-456-789
# set connection  000-000-000
# 0 <- unclaimed
# 1 <- claimed by player 1
# 2 <- claimed by player 2
#
# player 1
# player 2
#
# winning combos
#
# 111-***-*** - straight
# 1**-*1*-**1 - diagonal
# ***-111-***
#
#
#
#
# etc

class ApplicationController < Sinatra::Base
    #server logic goes here
   def self.inherited(sublass)
       super
       use sublass
   end

   get '/' do
        "hello world"
    end

   get '/foo/?' do
        "went to foo"
   end
   run! if __FILE__ == $0

end

class UserController < Sinatra::Base
    #here is where users are defined

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

class SessionsController < Sinatra::Base

    get '/' do
        redirect '/login'
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


class GameController < Sinatra::Base
    #this is the main set of controllers relating to the operation
    #of the side

    #presents the
    get '/' do
        "game#controller"
    end
    #create a new game board
    get '/new/?' do
        game = Tictactoe::GameInstance.new

        game.say("second game yay!")
    end

    #
    get "/sessions/?" do
         @content = "<ul>"
        @games = Game.all
        @games.each do |game|
            @content << "<li>session: <a href='/game/gamesession/#{game.id}'>board: #{game.board}</a></li>"
        end
        @content
    end

    get '/gamesession/:id' do
        game_id = params[:id]
        @game = Game.get(game_id)
        "<p> board says: #{@game.board}"
    end


end


