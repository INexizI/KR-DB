class SkillsController < ApplicationController
  before_action :set_skill, only: :show

  def index
    @chars = Char.order('name ASC').load_async
    @skills = Skill.order('skill_number ASC').load_async
  end

  def show
  end

  private
    def set_skill
      @skill = Skill.find(params[:id])
    end

    def skill_params
      params.require(:skill).permit(:name, :description, :mana, :cooldown, :skill_number)
    end
end
