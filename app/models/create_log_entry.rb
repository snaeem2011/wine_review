class CreateLogEntry < ActiveRecord::Base
	belong_to :Wines
	ratings = 1..5
	validates :name, :location, :comments, presence: true
	validates :comments, length: {minimun: 15}, unless: 'comment.blank?'
	validates :ratings, inclusion: {in: RATINGS, message: "must be form #{RATINGS.first} to #{RATINGS.last}"}
end
