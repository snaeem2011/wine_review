class Wine < ActiveRecord::Base
	validates :name, :year, :winery, :country, :varietal, presence: true
end
