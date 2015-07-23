class AddEmailAndNameToOpinions < ActiveRecord::Migration
  def change
  	add_column :opinions, :email, :string
  	add_column :opinions, :name, :string
  end
end
