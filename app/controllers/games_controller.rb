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
        if @game
        erb :"games/show"
        else
          redirect "/games"
        end
    end

    get '/games/:id/edit' do
      @game = Game.find_by(id: params[:id])
      erb :"games/edit"
    end

    patch '/games/:id' do
      @game = Game.find_by(id: params[:id])
      attrs = params[:game]
      @game.update(attrs)
      redirect to "/games/#{@game.id}"
    end

    delete '/games/:id' do
      id = params[:id]
      @game = Game.find_by(id: id)
      Game.destroy(id)
      redirect to "/companies/#{@game.company_id}"
      end

end