class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    @chars = Char.all
  end
end
