class RolesController < ApplicationController
  def index
    @roles = Role.all.load_async
    @stats = Stat.all.load_async
  end
end
