class Gear < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :char, optional: true
  belongs_to :role, optional: true
  has_many :stats, class_name: 'Stat'
end
