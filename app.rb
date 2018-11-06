require 'sinatra'

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
        erb:gameView
    end

    run! if app_file == $0

end