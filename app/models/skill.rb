class Skill < ApplicationRecord
  belongs_to :char
  belongs_to :parent, optional: true, class_name: 'Skill'

  validates :name, length: { minimum: 3 }, presence: true
  validates :description, length: { maximum: 3000 }, presence: true
  validate :mana
  validate :cooldown
  validates :skill_number, presence: true
  validate :parent_id
end
