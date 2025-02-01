class Skill < ApplicationRecord
  belongs_to :char
  belongs_to :parent, optional: true, class_name: 'Skill'

  validates :name, length: { minimum: 3 }, presence: true
  validates :description, length: { maximum: 3000 }, presence: true
  validate :mana
  validate :cooldown
  validates :skill_number, presence: true
  validate :parent_id

  def self.ransackable_attributes(auth_object = nil)
    ["char_id", "cooldown", "created_at", "description", "id", "mana", "name", "parent_id", "skill_number", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["char", "parent"]
  end
end
