class MeegensController < ApplicationController

  layout "application"

  # GET /meegens
  # GET /meegens.xml
  def index
    @new_meegens = Meegen.all(:order => "created_at desc", :limit => 10)
    @popular_meegens = Meegen.all(:order => "fav desc")
    @tags = Meegen.tag_counts

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @meegens }
    end
  end

  # GET /meegens/1
  # GET /meegens/1.xml
  def show
    @meegen = Meegen.find(params[:id])
    if false # next meegen relationship
      before_meegen = Meegen.find 1
      before_meegen.next_logs << @meegen
    end

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
    @meegen.tag_list = params[:tag]
    
    respond_to do |format|
      if @meegen.save
        flash[:notice] = 'Meegen was successfully created.'
        format.html { redirect_to(m_path :id => @meegen.id, :name => @meegen.name.split(//u)[0..100].to_s) }
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
    if params[:tag]
      @meegen.tag_list = params[:tag]
    end

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

  def add_fav
    @meegen = Meegen.find(params[:id])
    @meegen.add_fav
    render :update do |page|
      page.replace_html "fav_#{@meegen.id.to_s}".to_sym, "#{@meegen.fav}star"
      # page.visual_effect :highlight, "fav_#{@meegen.id.to_s}".to_sym
    end
  end

  def add_tag
    @meegen = Meegen.find(params[:meegen_id])
    @meegen.tag_list.add params[:tag].to_s
    @meegen.save
    redirect_to @meegen
  rescue
    redirect_to "/"
  end

  def remove_tag
    @meegen = Meegen.find(params[:id])
    @meegen.tag_list.remove params[:tag].to_s 
    @meegen.save
    redirect_to @meegen
  rescue
    redirect_to "/"
  end
end

