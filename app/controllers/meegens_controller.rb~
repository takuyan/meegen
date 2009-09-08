class MeegensController < ApplicationController

  layout "application"

  # GET /meegens
  # GET /meegens.xml
  def index
    @meegens = Meegen.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @meegens }
    end
  end

  # GET /meegens/1
  # GET /meegens/1.xml
  def show
    @meegen = Meegen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @meegen }
    end
  end

  # GET /meegens/new
  # GET /meegens/new.xml
  def new
    @meegen = Meegen.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @meegen }
    end
  end

  # GET /meegens/1/edit
  def edit
    @meegen = Meegen.find(params[:id])
  end

  # POST /meegens
  # POST /meegens.xml
  def create
    @meegen = Meegen.new(params[:meegen])
    @keywords =
      Keyword.find_all_by_name(params[:keyword_name])
    if @keywords.size > 0
      @meegen.tag_list.add @keywords.first.name
    else
      @keyword = Keyword.new(:name => params[:keyword_name])
      @keyword.save
      @meegen.tag_list.add @keyword.name
    end

    respond_to do |format|
      if @meegen.save
        @keyword.save
        flash[:notice] = 'Meegen was successfully created.'
        format.html { redirect_to(@meegen) }
        format.xml  { render :xml => @meegen, :status => :created, :location => @meegen }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @meegen.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /meegens/1
  # PUT /meegens/1.xml
  def update
    @meegen = Meegen.find(params[:id])

    respond_to do |format|
      if @meegen.update_attributes(params[:meegen])
        flash[:notice] = 'Meegen was successfully updated.'
        format.html { redirect_to(@meegen) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @meegen.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /meegens/1
  # DELETE /meegens/1.xml
  def destroy
    @meegen = Meegen.find(params[:id])
    @meegen.destroy

    respond_to do |format|
      format.html { redirect_to(meegens_url) }
      format.xml  { head :ok }
    end
  end
end
