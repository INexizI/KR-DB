class GearsController < ApplicationController
  before_action :set_gear, only: :show

  def index
    @roles = Role.all.load_async
    @chars = Char.all.load_async
    @gears = Gear.all.load_async
    @skills = Skill.all.load_async
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
