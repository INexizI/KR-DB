class SearchController < ApplicationController
  def index
  end

  def search
    @chars = Char.order('name ASC').ransack(name_cont: params[:q]).result(distinct: true)
    @perks = Perk.order('name ASC').ransack(description_cont: params[:q]).result(distinct: true)
    @gears = Gear.order('name ASC').ransack(name_cont: params[:q]).result(distinct: true)
    @skills = Skill.order('name ASC').ransack(description_cont: params[:q]).result(distinct: true)

    respond_to do |format|
      format.html {}
      format.json {
        # @chars = @chars.limit(10)
        # @perks = @perks_desc.limit(10)
        # @gears = @gears.limit(10)
        # @skills = @skills.limit(10)
      }
    end
  end
end
