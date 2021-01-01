class SessionsController < ApplicationController

get "/login" do
    erb :"users/login"
end

post "/login" do
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password])

        session[:user_id] = user.id
        redirect to "/companies"

    else
        redirect to "/login"
    end
end

get "/logout" do
    session.clear
    redirect to "/login"
end

end