class RunesController < ApplicationController
  before_action :set_rune, only: :show
  def index
    @runes = Rune.all
  end

  def show
  end

  private
    def set_rune
      @rune = Rune.find(params[:id])
    end

    def rune_params
      params.require(:rune).permit(:name, :value, :type_gear, :tier)
    end
end
