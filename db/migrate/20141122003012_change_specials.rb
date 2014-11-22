class ChangeSpecials < ActiveRecord::Migration
  def change
  	remove_column :specials, :day_id 
  	add_column :specials, :day, :string
  	add_column :specials, :time, :string
  	remove_column :bars, :hours_operation
  	add_column :bars, :neighborhood, :string
  end
end
