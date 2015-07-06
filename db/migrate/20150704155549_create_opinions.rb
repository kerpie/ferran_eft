class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.string :comment

      t.timestamps null: false
    end
  end
end
