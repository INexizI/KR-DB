class CharsController < ApplicationController
  before_action :cache_char
  before_action :set_char, only: :show

  def index
    @roles = Role.all.load_async
    @chars = @c.load_async
    # @chars = JSON.parse(File.read('./public/json/heroes.json'))
    # render json: @chars
  end

  def show
    @perks = Perk.where('tier = ? OR perk_type = ?', @char.name, 'generic').load_async
    @skills = Skill.where(char_id: @char.id).load_async
    @stats = Stat.where(role_id: @char.role_id).load_async
    @gears = Gear.where(char_id: @char.id).load_async

    # require('zip')
    # Zip::File.open('./public/images/media/genericPerks/generic_perks.zip') do |zip_file|
    #   zip_file.each do |entry|
    #     content = entry.get_input_stream.read
    #     @perk_image = entry
    #     @perk_name = entry.name
    #   end
    # end

    # Zip::File.open('./public/images/media/genericPerks/generic_perks.zip') do |zip_file|
    #   zip_file.each do |entry|
    #     @tempfile = Tempfile.new(File.basename(entry.name))
    #     @tempfile.binmode
    #     @tempfile.write entry.get_input_stream.read
    #     @tempfile.close
    #   end
    # end
  end

  private
    def set_char
      # @char = Char.friendly.find(params[:id])
      @char = @c.friendly.find(params[:id])
    end

    def char_params
      params.require(:char).permit(:name, :description, :type_dmg, :position)
    end

    def cache_char
      @c = Rails.cache.fetch("chars", expires_in: 7.days) do
        Char.order("name ASC").all
      end
    end
end
