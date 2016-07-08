class CharactersController < ApplicationController

  include CharactersHelper

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
    
    @background = Background.new
    @background.character_id = @character.id
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    @character.save
    redirect_to character_path(@character)
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to characters_path
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
    flash.notice = "Character '#{@character.name}' Updated!"
    redirect_to character_path(@character)
  end

end
