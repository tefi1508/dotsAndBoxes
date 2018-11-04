require 'sinatra'
require './lib/test'


class App < Sinatra::Base 

    #Welcome 
    get '/' do
        erb:welcome
    end

    #Initial Configuration
    post '/initialConfig' do
        erb:initialConfiguration
    end

    #GameView
    post '/StartGame' do
        @matSize = params[:matSize]
        #@matSize = 5.to_i 
        erb:gameView
    end

    run! if app_file == $0

end