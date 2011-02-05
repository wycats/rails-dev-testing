class Post291sController < ApplicationController
  # GET /post291s
  # GET /post291s.xml
  def index
    @post291s = Post291.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post291s }
    end
  end

  # GET /post291s/1
  # GET /post291s/1.xml
  def show
    @post291 = Post291.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post291 }
    end
  end

  # GET /post291s/new
  # GET /post291s/new.xml
  def new
    @post291 = Post291.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post291 }
    end
  end

  # GET /post291s/1/edit
  def edit
    @post291 = Post291.find(params[:id])
  end

  # POST /post291s
  # POST /post291s.xml
  def create
    @post291 = Post291.new(params[:post291])

    respond_to do |format|
      if @post291.save
        format.html { redirect_to(@post291, :notice => 'Post291 was successfully created.') }
        format.xml  { render :xml => @post291, :status => :created, :location => @post291 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post291.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post291s/1
  # PUT /post291s/1.xml
  def update
    @post291 = Post291.find(params[:id])

    respond_to do |format|
      if @post291.update_attributes(params[:post291])
        format.html { redirect_to(@post291, :notice => 'Post291 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post291.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post291s/1
  # DELETE /post291s/1.xml
  def destroy
    @post291 = Post291.find(params[:id])
    @post291.destroy

    respond_to do |format|
      format.html { redirect_to(post291s_url) }
      format.xml  { head :ok }
    end
  end
end
