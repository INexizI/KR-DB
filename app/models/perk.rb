class Perk < ApplicationRecord
  # acts_as_taggable # Alias for acts_as_taggable_on :tags
  # acts_as_taggable_on :tags

  belongs_to :char, optional: true

  validates :name, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { maximum: 3000 }
  validates :tier, presence: true
  validates :sequence, presence: true
  validates :perk_type, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["char_id", "created_at", "description", "id", "name", "perk_type", "sequence", "tier", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["char"]
  end
end
