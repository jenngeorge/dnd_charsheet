class BackgroundsController < ApplicationController

  def create
    @background = Background.new(background_params)
    @background.character_id = params[:character_id]

    @background.save

    redirect_to character_path(@background.character)
  end

  def background_params
    params.require(:background).permit(:background_type, :race, :subrace, :age, :height, :weight, :alignment, :appearance)
  end
end
