class EnchantsController < ApplicationController
  def index
    @enchants = Enchant.all.load_async
  end
end
