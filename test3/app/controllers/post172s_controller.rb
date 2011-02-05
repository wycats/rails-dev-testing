class Post172sController < ApplicationController
  # GET /post172s
  # GET /post172s.xml
  def index
    @post172s = Post172.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post172s }
    end
  end

  # GET /post172s/1
  # GET /post172s/1.xml
  def show
    @post172 = Post172.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post172 }
    end
  end

  # GET /post172s/new
  # GET /post172s/new.xml
  def new
    @post172 = Post172.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post172 }
    end
  end

  # GET /post172s/1/edit
  def edit
    @post172 = Post172.find(params[:id])
  end

  # POST /post172s
  # POST /post172s.xml
  def create
    @post172 = Post172.new(params[:post172])

    respond_to do |format|
      if @post172.save
        format.html { redirect_to(@post172, :notice => 'Post172 was successfully created.') }
        format.xml  { render :xml => @post172, :status => :created, :location => @post172 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post172.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post172s/1
  # PUT /post172s/1.xml
  def update
    @post172 = Post172.find(params[:id])

    respond_to do |format|
      if @post172.update_attributes(params[:post172])
        format.html { redirect_to(@post172, :notice => 'Post172 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post172.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post172s/1
  # DELETE /post172s/1.xml
  def destroy
    @post172 = Post172.find(params[:id])
    @post172.destroy

    respond_to do |format|
      format.html { redirect_to(post172s_url) }
      format.xml  { head :ok }
    end
  end
end
