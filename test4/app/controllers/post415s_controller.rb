class Post415sController < ApplicationController
  # GET /post415s
  # GET /post415s.xml
  def index
    @post415s = Post415.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post415s }
    end
  end

  # GET /post415s/1
  # GET /post415s/1.xml
  def show
    @post415 = Post415.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post415 }
    end
  end

  # GET /post415s/new
  # GET /post415s/new.xml
  def new
    @post415 = Post415.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post415 }
    end
  end

  # GET /post415s/1/edit
  def edit
    @post415 = Post415.find(params[:id])
  end

  # POST /post415s
  # POST /post415s.xml
  def create
    @post415 = Post415.new(params[:post415])

    respond_to do |format|
      if @post415.save
        format.html { redirect_to(@post415, :notice => 'Post415 was successfully created.') }
        format.xml  { render :xml => @post415, :status => :created, :location => @post415 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post415.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post415s/1
  # PUT /post415s/1.xml
  def update
    @post415 = Post415.find(params[:id])

    respond_to do |format|
      if @post415.update_attributes(params[:post415])
        format.html { redirect_to(@post415, :notice => 'Post415 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post415.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post415s/1
  # DELETE /post415s/1.xml
  def destroy
    @post415 = Post415.find(params[:id])
    @post415.destroy

    respond_to do |format|
      format.html { redirect_to(post415s_url) }
      format.xml  { head :ok }
    end
  end
end
