class Char < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: %i[slugged finders]

  belongs_to :role
  has_many :skills
  has_many :perks
  has_many :gears

  default_scope {order('name ASC')}
end
