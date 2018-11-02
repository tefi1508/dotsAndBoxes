require 'sinatra'

class App < Sinatra::Base 
    get '/' do
        erb:welcome
    end
    run! if app_file == $0
end