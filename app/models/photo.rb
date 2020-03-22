class Photo < ApplicationRecord
	extend FriendlyId
  friendly_id :titre, use: :slugged
	belongs_to :membre
end
