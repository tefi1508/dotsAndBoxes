require 'sinatra'

class App < Sinatra::Base 

    #Welcome 
    get '/' do
        erb:welcome
    end

    #Initial Configuration
    post '/initialConfig' do
        "Configuracion inicial"
    end

    run! if app_file == $0

end