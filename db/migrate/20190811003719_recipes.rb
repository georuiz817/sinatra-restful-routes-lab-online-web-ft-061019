class Recipes < ActiveRecord::Migration
  def change
    create_table Recipes do |t|
      t.string :name
      t.string :email
      t.string :password
    end 
  end
end
