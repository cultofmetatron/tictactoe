#game controller
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


