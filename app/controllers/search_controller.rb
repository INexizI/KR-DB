class SearchController < ApplicationController
  def index
  end

  def search
    @chars = Char.order('name ASC').ransack(name_cont: params[:q]).result(distinct: true)
    @skills_n = Skill.order('name ASC').ransack(name_cont: params[:q]).result(distinct: true)
    @skills_d = Skill.order('name ASC').ransack(description_cont: params[:q]).result(distinct: true)
    @perks_n = Perk.order('name ASC').ransack(name_cont: params[:q]).result(distinct: true)
    @perks_d = Perk.order('name ASC').ransack(description_cont: params[:q]).result(distinct: true)
    @gears_n = Gear.order('name ASC').ransack(name_cont: params[:q]).result(distinct: true)
    @gears_d = Gear.order('name ASC').ransack(description_cont: params[:q]).result(distinct: true)

    respond_to do |format|
      format.html {}
      format.json {}
    end
  end
end
