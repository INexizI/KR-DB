class StatsController < ApplicationController
  before_action :set_stat, only: :show

  def index
    @stats = Stat.all
  end

  def show
  end

  private
    def set_stat
      @stat = Stat.find(params[:id])
    end

    def stat_params
      params.require(:stat).permit(:name, :value, :stat_type, :notice)
    end
end
