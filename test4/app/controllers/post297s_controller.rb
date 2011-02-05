class Post297sController < ApplicationController
  # GET /post297s
  # GET /post297s.xml
  def index
    @post297s = Post297.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post297s }
    end
  end

  # GET /post297s/1
  # GET /post297s/1.xml
  def show
    @post297 = Post297.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post297 }
    end
  end

  # GET /post297s/new
  # GET /post297s/new.xml
  def new
    @post297 = Post297.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post297 }
    end
  end

  # GET /post297s/1/edit
  def edit
    @post297 = Post297.find(params[:id])
  end

  # POST /post297s
  # POST /post297s.xml
  def create
    @post297 = Post297.new(params[:post297])

    respond_to do |format|
      if @post297.save
        format.html { redirect_to(@post297, :notice => 'Post297 was successfully created.') }
        format.xml  { render :xml => @post297, :status => :created, :location => @post297 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post297.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post297s/1
  # PUT /post297s/1.xml
  def update
    @post297 = Post297.find(params[:id])

    respond_to do |format|
      if @post297.update_attributes(params[:post297])
        format.html { redirect_to(@post297, :notice => 'Post297 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post297.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post297s/1
  # DELETE /post297s/1.xml
  def destroy
    @post297 = Post297.find(params[:id])
    @post297.destroy

    respond_to do |format|
      format.html { redirect_to(post297s_url) }
      format.xml  { head :ok }
    end
  end
end
