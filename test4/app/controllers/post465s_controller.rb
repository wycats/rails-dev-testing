class Post465sController < ApplicationController
  # GET /post465s
  # GET /post465s.xml
  def index
    @post465s = Post465.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post465s }
    end
  end

  # GET /post465s/1
  # GET /post465s/1.xml
  def show
    @post465 = Post465.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post465 }
    end
  end

  # GET /post465s/new
  # GET /post465s/new.xml
  def new
    @post465 = Post465.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post465 }
    end
  end

  # GET /post465s/1/edit
  def edit
    @post465 = Post465.find(params[:id])
  end

  # POST /post465s
  # POST /post465s.xml
  def create
    @post465 = Post465.new(params[:post465])

    respond_to do |format|
      if @post465.save
        format.html { redirect_to(@post465, :notice => 'Post465 was successfully created.') }
        format.xml  { render :xml => @post465, :status => :created, :location => @post465 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post465.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post465s/1
  # PUT /post465s/1.xml
  def update
    @post465 = Post465.find(params[:id])

    respond_to do |format|
      if @post465.update_attributes(params[:post465])
        format.html { redirect_to(@post465, :notice => 'Post465 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post465.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post465s/1
  # DELETE /post465s/1.xml
  def destroy
    @post465 = Post465.find(params[:id])
    @post465.destroy

    respond_to do |format|
      format.html { redirect_to(post465s_url) }
      format.xml  { head :ok }
    end
  end
end
