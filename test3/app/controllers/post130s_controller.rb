class Post130sController < ApplicationController
  # GET /post130s
  # GET /post130s.xml
  def index
    @post130s = Post130.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post130s }
    end
  end

  # GET /post130s/1
  # GET /post130s/1.xml
  def show
    @post130 = Post130.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post130 }
    end
  end

  # GET /post130s/new
  # GET /post130s/new.xml
  def new
    @post130 = Post130.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post130 }
    end
  end

  # GET /post130s/1/edit
  def edit
    @post130 = Post130.find(params[:id])
  end

  # POST /post130s
  # POST /post130s.xml
  def create
    @post130 = Post130.new(params[:post130])

    respond_to do |format|
      if @post130.save
        format.html { redirect_to(@post130, :notice => 'Post130 was successfully created.') }
        format.xml  { render :xml => @post130, :status => :created, :location => @post130 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post130.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post130s/1
  # PUT /post130s/1.xml
  def update
    @post130 = Post130.find(params[:id])

    respond_to do |format|
      if @post130.update_attributes(params[:post130])
        format.html { redirect_to(@post130, :notice => 'Post130 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post130.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post130s/1
  # DELETE /post130s/1.xml
  def destroy
    @post130 = Post130.find(params[:id])
    @post130.destroy

    respond_to do |format|
      format.html { redirect_to(post130s_url) }
      format.xml  { head :ok }
    end
  end
end
