require 'sinatra'
require './lib/player'

class App < Sinatra::Base 

    #Welcome 
    get '/' do
        erb:welcome
    end

    #Initial Configuration
    get '/initialConfig' do
        erb:initialConfiguration
    end

    #GameView
    get '/startGame' do
        #@matSize = params[:matSize]
        @matSize = 5.to_i 
        @player1 =  Player.new()
        @player1.init("Jugador 1","Black","X",0)
        @player2 =  Player.new()
        @player2.init("Jugador 2","Black","O",0)
        erb:gameView
    end

    run! if app_file == $0

end