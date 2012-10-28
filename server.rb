require 'bundler/setup'
require 'sinatra/base'
require './lib/tictactoe'
require './lib/models'
require 'haml'

ROOT_DIR = File.dirname(File.absolute_path(__FILE__))

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

#loading appications.rb kickstarts a autoloading of any files in the ./controllers
#directory so new models can be added by simply adding a new file to the
#controllers directory. you still however, need to add them to the config.ru file
#for routing.
load './controllers/application.rb'



