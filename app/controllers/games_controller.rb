class GamesController < ApplicationController

    get "/games" do
        @games = Game.all.sort_by { |game| game.release_year }
        erb :"games/index"
      end

end