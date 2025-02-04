class CharsController < ApplicationController
  before_action :set_char, only: :show

  def index
    @knight = Char.where(role_id: 1).order('name ASC').load_async
    @warrior = Char.where(role_id: 2).order('name ASC').load_async
    @assassin = Char.where(role_id: 3).order('name ASC').load_async
    @archer = Char.where(role_id: 4).order('name ASC').load_async
    @mechanic = Char.where(role_id: 5).order('name ASC').load_async
    @wizard = Char.where(role_id: 6).order('name ASC').load_async
    @priest = Char.where(role_id: 7).order('name ASC').load_async
    # @chars = Char.order('name ASC').load_async
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
      @char = Char.friendly.find(params[:id])
    end

    def char_params
      params.require(:char).permit(:name, :description, :type_dmg, :position)
    end
end
