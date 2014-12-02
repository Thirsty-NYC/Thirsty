class CreateTableNeighborhood < ActiveRecord::Migration
  def change
    create_table :table_neighborhoods do |t|
    	t.string :name
    end
  end
end
