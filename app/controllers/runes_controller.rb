class RunesController < ApplicationController

  def index
    @runes = Rune.all
  end

end
