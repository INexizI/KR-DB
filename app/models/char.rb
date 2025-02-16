class Char < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  
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

  # default_scope { order('name ASC') }

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "id_value", "name", "position", "role_id", "slug", "type_dmg", "updated_at"]
  end
end
