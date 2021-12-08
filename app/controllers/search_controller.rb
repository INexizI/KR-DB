class SearchController < ApplicationController
  def index
  end

  def search
    @chars = Char.order('name ASC').ransack(name_cont: params[:q]).result(distinct: true)
    @skills = Skill.order('name ASC').ransack(name_or_description_cont: params[:q]).result(distinct: true)
    @perks = Perk.order('name ASC').ransack(name_or_description_cont: params[:q]).result(distinct: true)
    @gears = Gear.order('name ASC').ransack(name_or_description_cont: params[:q]).result(distinct: true)

    respond_to do |format|
      format.html {}
      format.json {}
    end
  end
end
