class GearsController < ApplicationController
  before_action :set_gear, only: :show

  def index
    # @gears = Gear.all
    @gears = Gear.all
    # @gears = Gear.order('gear_type,id ASC')
    @chars = Char.all
    @roles = Role.all
    @skills = Skill.all
  end

  def show
    @stats = Stat.all
  end

  private
    def set_gear
      @gear = Gear.find(params[:id])
    end

    def gear_params
      params.require(:gear).permit(:name, :description, :tier, :set, :gear_type, :gear_skill)
    end
end
