require 'sinatra/base'
require './server.rb'


map('/') { run ApplicationController }
map('/game') {run GameController}
map('/users') {run UserController}
map('/sessions') { run SessionsController }

