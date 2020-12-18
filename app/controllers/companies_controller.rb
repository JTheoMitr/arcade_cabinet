class CompaniesController < ApplicationController

    get "/companies" do
        @companies = Company.all.sort_by { |company| company.name }
        erb :"companies/index"
      end

end