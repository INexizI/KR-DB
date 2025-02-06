class PerksController < ApplicationController
  def index
    @roles = Role.all.load_async
    @perks = Perk.all.load_async
  end
end
