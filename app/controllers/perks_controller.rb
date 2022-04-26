class PerksController < ApplicationController
  before_action :set_perk, only: :show

  def index
    @perks = Perk.all
  end

  def show
  end

  private
    def set_perk
      @perk = Perk.find(params[:id])
    end

    def perk_params
      params.require(:perk).permit(:name, :description, :tier, :sequence, :perk_type)
    end
end
