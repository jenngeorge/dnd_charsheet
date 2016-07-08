module CharactersHelper
  def character_params
    params.require(:character).permit(:name)
  end
end
