class Post276sController < ApplicationController
  # GET /post276s
  # GET /post276s.xml
  def index
    @post276s = Post276.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post276s }
    end
  end

  # GET /post276s/1
  # GET /post276s/1.xml
  def show
    @post276 = Post276.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post276 }
    end
  end

  # GET /post276s/new
  # GET /post276s/new.xml
  def new
    @post276 = Post276.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post276 }
    end
  end

  # GET /post276s/1/edit
  def edit
    @post276 = Post276.find(params[:id])
  end

  # POST /post276s
  # POST /post276s.xml
  def create
    @post276 = Post276.new(params[:post276])

    respond_to do |format|
      if @post276.save
        format.html { redirect_to(@post276, :notice => 'Post276 was successfully created.') }
        format.xml  { render :xml => @post276, :status => :created, :location => @post276 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post276.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post276s/1
  # PUT /post276s/1.xml
  def update
    @post276 = Post276.find(params[:id])

    respond_to do |format|
      if @post276.update_attributes(params[:post276])
        format.html { redirect_to(@post276, :notice => 'Post276 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post276.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post276s/1
  # DELETE /post276s/1.xml
  def destroy
    @post276 = Post276.find(params[:id])
    @post276.destroy

    respond_to do |format|
      format.html { redirect_to(post276s_url) }
      format.xml  { head :ok }
    end
  end
end
