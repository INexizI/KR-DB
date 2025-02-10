class GearsController < ApplicationController
  def index
    @roles = Role.order("id ASC").load_async
    @chars = Char.order("name ASC").load_async
    @gears = Gear.order("id ASC").load_async
    @skills = Skill.where("length(parent_id) > 4").load_async
  end
end
