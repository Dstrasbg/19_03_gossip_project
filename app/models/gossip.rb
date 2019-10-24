class Gossip < ApplicationRecord
    belongs_to :user
	has_many :goss_tags
	has_many :tags, through: :goss_tags
end
