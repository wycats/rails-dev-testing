class Post404sController < ApplicationController
  # GET /post404s
  # GET /post404s.xml
  def index
    @post404s = Post404.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post404s }
    end
  end

  # GET /post404s/1
  # GET /post404s/1.xml
  def show
    @post404 = Post404.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post404 }
    end
  end

  # GET /post404s/new
  # GET /post404s/new.xml
  def new
    @post404 = Post404.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post404 }
    end
  end

  # GET /post404s/1/edit
  def edit
    @post404 = Post404.find(params[:id])
  end

  # POST /post404s
  # POST /post404s.xml
  def create
    @post404 = Post404.new(params[:post404])

    respond_to do |format|
      if @post404.save
        format.html { redirect_to(@post404, :notice => 'Post404 was successfully created.') }
        format.xml  { render :xml => @post404, :status => :created, :location => @post404 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post404.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post404s/1
  # PUT /post404s/1.xml
  def update
    @post404 = Post404.find(params[:id])

    respond_to do |format|
      if @post404.update_attributes(params[:post404])
        format.html { redirect_to(@post404, :notice => 'Post404 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post404.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post404s/1
  # DELETE /post404s/1.xml
  def destroy
    @post404 = Post404.find(params[:id])
    @post404.destroy

    respond_to do |format|
      format.html { redirect_to(post404s_url) }
      format.xml  { head :ok }
    end
  end
end
