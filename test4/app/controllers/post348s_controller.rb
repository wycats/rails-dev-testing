class Post348sController < ApplicationController
  # GET /post348s
  # GET /post348s.xml
  def index
    @post348s = Post348.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post348s }
    end
  end

  # GET /post348s/1
  # GET /post348s/1.xml
  def show
    @post348 = Post348.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post348 }
    end
  end

  # GET /post348s/new
  # GET /post348s/new.xml
  def new
    @post348 = Post348.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post348 }
    end
  end

  # GET /post348s/1/edit
  def edit
    @post348 = Post348.find(params[:id])
  end

  # POST /post348s
  # POST /post348s.xml
  def create
    @post348 = Post348.new(params[:post348])

    respond_to do |format|
      if @post348.save
        format.html { redirect_to(@post348, :notice => 'Post348 was successfully created.') }
        format.xml  { render :xml => @post348, :status => :created, :location => @post348 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post348.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post348s/1
  # PUT /post348s/1.xml
  def update
    @post348 = Post348.find(params[:id])

    respond_to do |format|
      if @post348.update_attributes(params[:post348])
        format.html { redirect_to(@post348, :notice => 'Post348 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post348.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post348s/1
  # DELETE /post348s/1.xml
  def destroy
    @post348 = Post348.find(params[:id])
    @post348.destroy

    respond_to do |format|
      format.html { redirect_to(post348s_url) }
      format.xml  { head :ok }
    end
  end
end
