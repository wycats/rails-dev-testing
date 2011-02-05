class Post122sController < ApplicationController
  # GET /post122s
  # GET /post122s.xml
  def index
    @post122s = Post122.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post122s }
    end
  end

  # GET /post122s/1
  # GET /post122s/1.xml
  def show
    @post122 = Post122.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post122 }
    end
  end

  # GET /post122s/new
  # GET /post122s/new.xml
  def new
    @post122 = Post122.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post122 }
    end
  end

  # GET /post122s/1/edit
  def edit
    @post122 = Post122.find(params[:id])
  end

  # POST /post122s
  # POST /post122s.xml
  def create
    @post122 = Post122.new(params[:post122])

    respond_to do |format|
      if @post122.save
        format.html { redirect_to(@post122, :notice => 'Post122 was successfully created.') }
        format.xml  { render :xml => @post122, :status => :created, :location => @post122 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post122.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post122s/1
  # PUT /post122s/1.xml
  def update
    @post122 = Post122.find(params[:id])

    respond_to do |format|
      if @post122.update_attributes(params[:post122])
        format.html { redirect_to(@post122, :notice => 'Post122 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post122.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post122s/1
  # DELETE /post122s/1.xml
  def destroy
    @post122 = Post122.find(params[:id])
    @post122.destroy

    respond_to do |format|
      format.html { redirect_to(post122s_url) }
      format.xml  { head :ok }
    end
  end
end
