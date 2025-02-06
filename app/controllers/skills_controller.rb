class SkillsController < ApplicationController
  def index
    @chars = Char.order('name ASC').load_async
    @skills = Skill.order('skill_number ASC').load_async
  end
end
