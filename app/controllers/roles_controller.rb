class RolesController < ApplicationController
  before_action :set_role, only: :show

  def index
    @roles = Role.all.load_async
    @stats = Stat.all.load_async
  end

  def show
  end

  private
    def set_role
      @role = Role.friendly.find(params[:id])
    end

    def role_params
      params.require(:role).permit(:name)
    end
end
