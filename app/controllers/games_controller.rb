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
      @company = @game.company
        if !!session[:user_id] && (@company.user == current_user || current_user.username == "admin")
          erb :"games/edit"
        else
          redirect to "/unauthorized"
        end
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
      @company = @game.company
        if !!session[:user_id] && (@company.user == current_user || current_user.username == "admin")
          Game.destroy(id)
          redirect to "/companies/#{@game.company_id}"
        else
          redirect to "/unauthorized"
        end
      end

end