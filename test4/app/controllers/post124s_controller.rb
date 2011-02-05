class Post124sController < ApplicationController
  # GET /post124s
  # GET /post124s.xml
  def index
    @post124s = Post124.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post124s }
    end
  end

  # GET /post124s/1
  # GET /post124s/1.xml
  def show
    @post124 = Post124.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post124 }
    end
  end

  # GET /post124s/new
  # GET /post124s/new.xml
  def new
    @post124 = Post124.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post124 }
    end
  end

  # GET /post124s/1/edit
  def edit
    @post124 = Post124.find(params[:id])
  end

  # POST /post124s
  # POST /post124s.xml
  def create
    @post124 = Post124.new(params[:post124])

    respond_to do |format|
      if @post124.save
        format.html { redirect_to(@post124, :notice => 'Post124 was successfully created.') }
        format.xml  { render :xml => @post124, :status => :created, :location => @post124 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post124.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post124s/1
  # PUT /post124s/1.xml
  def update
    @post124 = Post124.find(params[:id])

    respond_to do |format|
      if @post124.update_attributes(params[:post124])
        format.html { redirect_to(@post124, :notice => 'Post124 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post124.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post124s/1
  # DELETE /post124s/1.xml
  def destroy
    @post124 = Post124.find(params[:id])
    @post124.destroy

    respond_to do |format|
      format.html { redirect_to(post124s_url) }
      format.xml  { head :ok }
    end
  end
end
