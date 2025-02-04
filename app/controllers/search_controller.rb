class SearchController < ApplicationController
  def search
    @chars = Char.order('name ASC').ransack(name_cont: params[:q]).result(distinct: true).limit(10).load_async
    @gears = Gear.order('name ASC').where.not(gear_type: 'acc').ransack(name_or_description_cont: params[:q]).result(distinct: true).limit(10).load_async
    @perks = Perk.order('name ASC').ransack(name_or_description_cont: params[:q]).result(distinct: true).limit(10).load_async
    @skills = Skill.order('name ASC').ransack(name_or_description_cont: params[:q]).result(distinct: true).limit(10).load_async

    respond_to do |format|
      format.html {}
      format.json {}
    end
  end
end
