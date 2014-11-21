class CreateDay < ActiveRecord::Migration
  def change
    create_table :days do |t|
    	t.string :Monday,
    	t.string :Tuesday,
    	t.string :Wednesday,
    	t.string :Thursday,
    	t.string :Friday,
    	t.string :Satday,
    	t.string :Sunday
    end
  end
end
