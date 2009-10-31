class TagController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @meegens = Meegen.tagged_with @tag.name 
  end
end
