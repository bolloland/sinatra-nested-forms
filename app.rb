require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
      get '/' do
        erb :root
      end

      get '/new' do
        erb :"pirates/new"
      end

      post '/pirates' do
        @pirate = Pirate.new(params["pirate"])
        @ship_arr = (params["pirate"]["ships"])
        @ship_arr.each do |s|
          Ship.new(s)
        end
      
        @ships = Ship.all
      
        erb :"pirates/show"
      end

    
  end
end
