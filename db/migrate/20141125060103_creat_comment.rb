class CreatComment < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
  		t.string :comments
  		t.integer :bar_id
  		t.string :category
  		t.timestamps
  	end 
  end
end
