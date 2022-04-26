require 'rails_helper'

RSpec.describe Skill, type: :model do
  describe 'associations' do
    it { should belong_to(:char) }
    it { should belong_to(:parent).class_name('Skill').optional }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(3) }
    it { should validate_presence_of(:description) }
    it { should validate_length_of(:description).is_at_most(3000) }
    it { should validate_presence_of(:skill_number) }
  end
end
