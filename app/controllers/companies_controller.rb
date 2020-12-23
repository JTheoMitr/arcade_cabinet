class CompaniesController < ApplicationController


      get "/companies/new" do
        erb :"companies/new"
      end

      post '/companies' do
        attrs = params
        @company = Company.create(attrs)
    
        redirect to "/companies/#{@company.id}"
      end

      get "/companies" do
        @companies = Company.all.sort_by { |company| company.name }
        erb :"companies/index"
      end

      get "/companies/:id" do
        @company = Company.find_by(id: params[:id])
        if @company
        erb :"companies/show"
        else
          redirect "/companies"
        end
    end

    get '/companies/:id/edit' do
      @company = Company.find_by(id: params[:id])
      erb :"companies/edit"
    end

    get '/companies/:id/newgame' do
      @company = Company.find_by(id: params[:id])
      erb :"games/new"
    end

    patch '/companies/:id' do
      @company = Company.find_by(id: params[:id])
      attrs = params[:company]
      @company.update(attrs)
      redirect to "/companies/#{@company.id}"
    end

    delete '/companies/:id' do
      id = params[:id]
      Company.destroy(id)
      redirect to '/companies'
      end

      delete '/companies' do
        Company.delete_all
        redirect to '/companies'
        end

   

end