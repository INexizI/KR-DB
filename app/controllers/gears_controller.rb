class GearsController < ApplicationController
  before_action :set_gear, only: :show

  def index
    @roles = Role.order('id ASC').load_async
    @chars = Char.order('name ASC').load_async
    @gears = Gear.order('id ASC').load_async
    @skills = Skill.where('length(parent_id) > 4').load_async
  end

  def show
  end

  private
    def set_gear
      @gear = Gear.find(params[:id])
    end

    def gear_params
      params.require(:gear).permit(:name, :description, :tier, :set, :gear_type, :gear_skill)
    end
end
