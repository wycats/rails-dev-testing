class Post256sController < ApplicationController
  # GET /post256s
  # GET /post256s.xml
  def index
    @post256s = Post256.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post256s }
    end
  end

  # GET /post256s/1
  # GET /post256s/1.xml
  def show
    @post256 = Post256.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post256 }
    end
  end

  # GET /post256s/new
  # GET /post256s/new.xml
  def new
    @post256 = Post256.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post256 }
    end
  end

  # GET /post256s/1/edit
  def edit
    @post256 = Post256.find(params[:id])
  end

  # POST /post256s
  # POST /post256s.xml
  def create
    @post256 = Post256.new(params[:post256])

    respond_to do |format|
      if @post256.save
        format.html { redirect_to(@post256, :notice => 'Post256 was successfully created.') }
        format.xml  { render :xml => @post256, :status => :created, :location => @post256 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post256.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post256s/1
  # PUT /post256s/1.xml
  def update
    @post256 = Post256.find(params[:id])

    respond_to do |format|
      if @post256.update_attributes(params[:post256])
        format.html { redirect_to(@post256, :notice => 'Post256 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post256.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post256s/1
  # DELETE /post256s/1.xml
  def destroy
    @post256 = Post256.find(params[:id])
    @post256.destroy

    respond_to do |format|
      format.html { redirect_to(post256s_url) }
      format.xml  { head :ok }
    end
  end
end
