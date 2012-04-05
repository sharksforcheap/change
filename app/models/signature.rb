class Signature < ActiveRecord::Base
	belongs_to :user
	belongs_to :petition

	validates_uniqueness_of :user_id, :scope => :petition_id
end
