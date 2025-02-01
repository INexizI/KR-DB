class Gear < ApplicationRecord
  belongs_to :char, optional: true
  belongs_to :role, optional: true
  belongs_to :stat, optional: true
  # has_many :stats, class_name: 'Stat'

  validates :name, length: { minimum: 3 }
  validates :description, length: { maximum: 3000 }
  validate :tier
  validate :set
  validate :gear_type
  validate :gear_skill

  def self.ransackable_attributes(auth_object = nil)
    ["char_id", "created_at", "description", "explanation", "gear_skill", "gear_type", "id", "name", "notice", "role_id", "set", "stat_id", "tier", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["char", "role", "stat"]
  end
end
