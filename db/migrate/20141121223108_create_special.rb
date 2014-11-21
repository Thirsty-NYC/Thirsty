class CreateSpecial < ActiveRecord::Migration
  def change
    create_table :specials do |t|
    	t.integer :day_id
    	t.integer :bar_id
    	t.string :info
    end
  end
end
