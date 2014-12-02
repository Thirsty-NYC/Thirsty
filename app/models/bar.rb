class Bar < ActiveRecord::Base
	has_many :specials
	has_many :comments
	belongs_to :neighborhood
end 