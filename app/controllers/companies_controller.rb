class CompaniesController < ApplicationController

    get "/companies" do
        @companies = Company.all.sort_by { |company| company.name }
        erb :"companies/index"
      end

      get "/companies/new" do
        erb :"companies/new"
      end

      post '/companies' do
        attrs = params
        @company = Company.create(attrs)
    
        redirect to "/companies/#{@company.id}"
      end

      get "/companies/:id" do
        @company = Company.find_by(id: params[:id])
        erb :"companies/show"
    end

end