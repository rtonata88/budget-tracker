class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.name
      t.references :user, null:false, foreign:true
      
      t.timestamps
    end
  end
end
