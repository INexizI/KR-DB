class CharsController < ApplicationController
  before_action :set_char, only: [:show, :edit, :update, :destroy, :update]

  def index
    @chars = Char.order('name ASC')
    # @chars = JSON.parse(File.read('./public/json/chars.json'))
    # render json: @chars
  end

  def show
    # @perks = Perk.all
    @perks = Perk.order('id ASC')
    @skills = Skill.all
    @stats = Stat.all
    @gears = Gear.order('id ASC')

    require('zip')
    Zip::File.open('./public/images/media/genericPerks/generic_perks.zip') do |zip_file|
      zip_file.each do |entry|
        content = entry.get_input_stream.read
        @perk_image = entry
        @perk_name = entry.name
      end
    end

    # Zip::File.open('./public/images/media/genericPerks/generic_perks.zip') do |zip_file|
    #   zip_file.each do |entry|
    #     @tempfile = Tempfile.new(File.basename(entry.name))
    #     @tempfile.binmode
    #     @tempfile.write entry.get_input_stream.read
    #     @tempfile.close
    #   end
    # end
  end

  # def new
  #   @char = Char.new
  # end
  #
  # def edit
  # end
  #
  # def create
  #   @char = Char.new(char_params)
  #
  #   respond_to do |format|
  #     if @char.save
  #       format.html { redirect_to @char, notice: 'char was successfully created.' }
  #       format.json { render :show, status: :created, location: @char }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @char.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # def update
  #   respond_to do |format|
  #     if @char.update(char_params)
  #       format.html { redirect_to @char, notice: 'char was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @char }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @char.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # def destroy
  #   @char.destroy
  #   respond_to do |format|
  #     format.html { redirect_to chars_url, notice: 'char was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    def set_char
      @char = Char.friendly.find(params[:id])
    end

    def char_params
      params.require(:char).permit(:name, :description, :avatar, :background, :type_dmg, :icon, :role_id)
    end
end
