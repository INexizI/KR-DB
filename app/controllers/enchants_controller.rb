class EnchantsController < ApplicationController
  before_action :set_enchant, only: :show

  def index
    @enchants = Enchant.all
  end

  def show
  end

  private
    def set_enchant
      @enchant = Enchant.find(params[:id])
    end

    def enchant_params
      params.require(:enchant).permit(:name, :tier, :type)
    end
end
