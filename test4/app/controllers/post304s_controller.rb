class Post304sController < ApplicationController
  # GET /post304s
  # GET /post304s.xml
  def index
    @post304s = Post304.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post304s }
    end
  end

  # GET /post304s/1
  # GET /post304s/1.xml
  def show
    @post304 = Post304.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post304 }
    end
  end

  # GET /post304s/new
  # GET /post304s/new.xml
  def new
    @post304 = Post304.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post304 }
    end
  end

  # GET /post304s/1/edit
  def edit
    @post304 = Post304.find(params[:id])
  end

  # POST /post304s
  # POST /post304s.xml
  def create
    @post304 = Post304.new(params[:post304])

    respond_to do |format|
      if @post304.save
        format.html { redirect_to(@post304, :notice => 'Post304 was successfully created.') }
        format.xml  { render :xml => @post304, :status => :created, :location => @post304 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post304.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post304s/1
  # PUT /post304s/1.xml
  def update
    @post304 = Post304.find(params[:id])

    respond_to do |format|
      if @post304.update_attributes(params[:post304])
        format.html { redirect_to(@post304, :notice => 'Post304 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post304.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post304s/1
  # DELETE /post304s/1.xml
  def destroy
    @post304 = Post304.find(params[:id])
    @post304.destroy

    respond_to do |format|
      format.html { redirect_to(post304s_url) }
      format.xml  { head :ok }
    end
  end
end
