class Tag < ApplicationRecord
    has_many :goss_tags
	has_many :gossips, through: :goss_tags
end
