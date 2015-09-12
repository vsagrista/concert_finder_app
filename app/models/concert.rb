class Concert < ActiveRecord::Base
	validates :band, :venue,:city,:date, :price, :description, presence: true
	validates :description, length: { maximum: 2000 }
	validates :band, length: { maximum: 100 }
	validates :description, uniqueness: true
end
