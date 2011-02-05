class Post283sController < ApplicationController
  # GET /post283s
  # GET /post283s.xml
  def index
    @post283s = Post283.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post283s }
    end
  end

  # GET /post283s/1
  # GET /post283s/1.xml
  def show
    @post283 = Post283.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post283 }
    end
  end

  # GET /post283s/new
  # GET /post283s/new.xml
  def new
    @post283 = Post283.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post283 }
    end
  end

  # GET /post283s/1/edit
  def edit
    @post283 = Post283.find(params[:id])
  end

  # POST /post283s
  # POST /post283s.xml
  def create
    @post283 = Post283.new(params[:post283])

    respond_to do |format|
      if @post283.save
        format.html { redirect_to(@post283, :notice => 'Post283 was successfully created.') }
        format.xml  { render :xml => @post283, :status => :created, :location => @post283 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post283.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post283s/1
  # PUT /post283s/1.xml
  def update
    @post283 = Post283.find(params[:id])

    respond_to do |format|
      if @post283.update_attributes(params[:post283])
        format.html { redirect_to(@post283, :notice => 'Post283 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post283.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post283s/1
  # DELETE /post283s/1.xml
  def destroy
    @post283 = Post283.find(params[:id])
    @post283.destroy

    respond_to do |format|
      format.html { redirect_to(post283s_url) }
      format.xml  { head :ok }
    end
  end
end
