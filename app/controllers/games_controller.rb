class GamesController < ApplicationController

    get "/games" do
        @games = Game.all.sort_by { |game| game.release_year }
        erb :"games/index"
      end

      get "/games/new" do
        erb :"games/new"
      end

      post '/games' do
        attrs = params
        @game = Game.create(attrs)
    
        redirect to "/games/#{@game.id}"
      end

      get "/games/:id" do
        @game = Game.find_by(id: params[:id])
        erb :"games/show"
    end

end