class RolesController < ApplicationController
  before_action :set_role, only: :show

  def index
    @roles = Role.all
    @stats = Stat.all
  end

  def show
    # @stats = Stat.all
  end

  private
    def set_role
      @role = Role.friendly.find(params[:id])
    end

    def role_params
      params.require(:role).permit(:name)
    end
end
