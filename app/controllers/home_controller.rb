class HomeController < ApplicationController
  def index
    @chars = Char.order("RANDOM()").limit(3).load_async
    @gears = Gear.where(gear_type: "art").order("RANDOM()").limit(3).load_async
    @perks = Perk.where(perk_type: "hero").order("RANDOM()").limit(3).load_async
    @runes = Rune.order("RANDOM()").limit(3).load_async
    @skills = Skill.where(parent_id: "").order("RANDOM()").limit(3).load_async
  end

  def offline
    render 'offline', layout: false
  end

#   def search
#     results = Location.search(search_params[:q], search_params)
#
#     locations = results.map do |r|
#       r.merge(r.delete('_source')).merge('id': r.delete('_id'))
#     end
#
#     render json: { locations: locations }, status: :ok
#   end
#
# private
#   def search_params
#     params.permit(:q, :level)
#   end
end
