class TagController < ApplicationController

  before_filter :find_tag,
    :only => [:show]

  def index
    @tags = Tag.all
  end

  def show
    @meegens = Meegen.tagged_with @tag
  end

  def find_tag
    if params[:id]
      @tag = Tag.find(params[:id])
    elsif params[:name]
      param_tags = Tag.find_all_by_name(params[:name])
      @tags = param_tags.split("+")
      @tag = @tags.first
    end
  end
end
