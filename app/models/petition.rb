class Petition < ActiveRecord::Base
	belongs_to :user
	has_many :signatures
	has_many :users, :through => :signatures

	validates :title, :presence => true
	validates :description, :presence => true
end
