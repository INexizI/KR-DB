class SearchController < ApplicationController
  # before_action :force_json, only: :search

  def index
  end

  def search
    @chars = Char.order('name ASC').ransack(name_cont: params[:q]).result(distinct: true).limit(10).load_async
    @skills = Skill.order('name ASC').ransack(name_or_description_cont: params[:q]).result(distinct: true).limit(10).load_async
    @perks = Perk.order('name ASC').ransack(name_or_description_cont: params[:q]).result(distinct: true).limit(10).load_async
    @gears = Gear.order('name ASC').where.not(id: [963..983]).ransack(name_or_description_cont: params[:q]).result(distinct: true).limit(10).load_async

    # @chars = Char.where("name ILIKE ?", "%#{params[:q]}%").limit(10)
    # @skills = Skill.where("name ILIKE ? or description ILIKE ?", "%#{params[:q]}%", "%#{params[:q]}%").limit(10)
    # @perks = Perk.where("name ILIKE ? or description ILIKE ?", "%#{params[:q]}%", "%#{params[:q]}%").limit(10)
    # @gears = Gear.where("name ILIKE ? or description ILIKE ?", "%#{params[:q]}%", "%#{params[:q]}%").limit(10)

    respond_to do |format|
      format.html {}
      format.json {}
    end
  end

  # private
  #   def force_json
  #     request.format = :json
  #   end
end
