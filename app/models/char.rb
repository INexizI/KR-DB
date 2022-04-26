class Char < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: %i[slugged finders]

  belongs_to :role
  has_many :skills
  has_many :perks
  has_many :gears

  validates :name, length: { minimum: 3 }, presence: true
  validates :description, length: { maximum: 3000 }, presence: true
  validates :type_dmg, presence: true
  validates :position, presence: true
  validates_uniqueness_of :slug, case_insensitive: true

  default_scope { order('name ASC') }
end
