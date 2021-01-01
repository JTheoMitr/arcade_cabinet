class UsersController < ApplicationController

    get "/signup" do
        erb :"users/new"
    end

    post "/signup" do

        #if params[:user].values.any?{|value| value.blank? }
        #if params[:user][:username] == "" || params[:user][:password] == ""
        #redirect to "/signup"

        user = User.new(params[:user])
        if user.save
            session[:user_id] = user.id
            redirect to "/companies"
        else    
            @errors = user.errors.full_messages.join(" - ")
            erb :"users/new"
        end
    end


end