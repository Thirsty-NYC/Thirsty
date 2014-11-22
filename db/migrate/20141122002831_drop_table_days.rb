class DropTableDays < ActiveRecord::Migration
  def change
  	drop_table :days
  end
end
