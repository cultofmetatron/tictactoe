require './lib/models'

module Tictactoe
    # the base class for a tictactoe game
    #
    #
    class GameInstance
        def initialize()

           @board = Game.create(
                :board => "000000000",
                :created_at => Time.now
           )

        end

        def say(quote)
            @board.board
        end
    end





end
