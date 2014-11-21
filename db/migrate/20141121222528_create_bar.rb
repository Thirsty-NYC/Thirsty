class CreateBar < ActiveRecord::Migration
  def change
    create_table :bars do |t|
    	t.string :name,
    	t.string :location,
    	t.string :hours_operation,
    	t.string :phone_number,
    	t.string :description, 
    	t.string :picture,
    	t.string :url
    end
  end
end
