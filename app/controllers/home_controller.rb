class HomeController < ApplicationController
  def index
    @chars = Char.order('RANDOM()').limit(3).load_async
    @gears = Gear.where.not('gear_type = ?', 'acc').order('RANDOM()').limit(3).load_async
    @perks = Perk.order('RANDOM()').limit(3).load_async
    @runes = Rune.order('RANDOM()').limit(3).load_async
    @skills = Skill.where('parent_id = ?', '').order('RANDOM()').limit(3).load_async
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
