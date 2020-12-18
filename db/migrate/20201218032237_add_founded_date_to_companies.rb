class AddFoundedDateToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :founded, :integer
  end
end
