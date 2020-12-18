class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.integer :release_year
      t.integer :company_id
    end
  end
end
