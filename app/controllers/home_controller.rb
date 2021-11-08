class HomeController < ApplicationController
  def index
    @char = Char.offset(rand(Char.count)).first
    @gear = Gear.offset(rand(Gear.where('id <= ?', '743').count)).first
    @perk = Perk.offset(rand(Perk.count)).first
    @role = Role.offset(rand(Role.count)).first
    @rune = Rune.offset(rand(Rune.count)).first
    @skill = Skill.offset(rand(Skill.where('parent_id = ?', '').count)).first
    @stat = Stat.offset(rand(Stat.count)).first
  end

  def offline
    render 'offline', layout: false
  end
end
