class SearchController < ApplicationController
  def search
    @chars = Char.ransack(name_cont: params[:q])
                 .result(distinct: true)
                 .order("name ASC")
                 .limit(10).load_async
    @gears = Gear.where.not("gear_type = ? AND gear_type = ? AND tier = ?", "acc", "", "")
                 .ransack(name_or_description_cont: params[:q])
                 .result(distinct: true)
                 .order("name ASC")
                 .limit(10).load_async
    @perks = Perk.where.not(perk_type: "t5")
                 .ransack(name_or_description_cont: params[:q])
                 .result(distinct: true)
                 .order("name ASC")
                 .limit(10).load_async
    @skills = Skill.ransack(name_or_description_cont: params[:q])
                   .result(distinct: true)
                   .order("name ASC")
                   .limit(10).load_async

    respond_to do |format|
      format.html {}
      format.json {}
    end
  end
end
