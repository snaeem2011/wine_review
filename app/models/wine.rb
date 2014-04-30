class Wine < ActiveRecord::Base
	validates :name, :year, :winery, :country, :varietal, presence: true
	has_many :CreateLogEntries
end
