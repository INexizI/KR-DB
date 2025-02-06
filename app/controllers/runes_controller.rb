class RunesController < ApplicationController
  def index
    @runes = Rune.where(tier: ['Legendary', 'Velkazar']).load_async
  end
end
