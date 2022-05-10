class CharsController < ApplicationController
  before_action :set_char, only: :show

  def index
    @chars = Char.order('name ASC').load_async
    # @chars = JSON.parse(File.read('./public/json/chars.json'))
    # render json: @chars
  end

  def show
    @perks = Perk.order('id ASC').load_async
    @skills = Skill.all.load_async
    @stats = Stat.all.load_async
    @gears = Gear.order('id ASC').load_async

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
      @char = Char.friendly.find(params[:id])
    end

    def char_params
      params.require(:char).permit(:name, :description, :type_dmg, :position)
    end
end
