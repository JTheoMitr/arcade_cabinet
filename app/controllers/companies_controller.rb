class CompaniesController < ApplicationController


      get "/companies/new" do
        erb :"companies/new"
      end

      post '/companies' do
        company = current_user.companies.create(params)
        redirect to "/companies"
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
      if @company.user == current_user
        erb :"companies/edit"
      else
        redirect to "/unauthorized"
      end
    end

    get '/companies/:id/newgame' do
      @company = Company.find_by(id: params[:id])
      if @company.user == current_user
        erb :"games/new"
      else
        redirect to "/unauthorized"
      end
    end

    patch '/companies/:id' do
      @company = Company.find_by(id: params[:id])
      attrs = params[:company]
      @company.update(attrs)
      redirect to "/companies/#{@company.id}"
    end

    delete '/companies/:id' do
      @company = Company.find_by(id: params[:id])
      if @company.user == current_user
        Company.destroy(id)
        redirect to '/companies'
      else
        redirect to '/unauthorized'
       end
      end

      delete '/companies' do
        Company.delete_all
        redirect to '/companies'
        end

   

end