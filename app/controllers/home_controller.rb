class HomeController < ApplicationController
  def index
    @chars = Char.order('RANDOM()').limit(3).load_async
    @gears = Gear.order('RANDOM()').limit(3).load_async
    @perks = Perk.order('RANDOM()').limit(3).load_async
    @runes = Rune.order('RANDOM()').limit(3).load_async
    @skills = Skill.where('parent_id = ?', '').order('RANDOM()').limit(3).load_async
  end

  def offline
    render 'offline', layout: false
  end
end
