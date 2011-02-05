class Post289sController < ApplicationController
  # GET /post289s
  # GET /post289s.xml
  def index
    @post289s = Post289.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post289s }
    end
  end

  # GET /post289s/1
  # GET /post289s/1.xml
  def show
    @post289 = Post289.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post289 }
    end
  end

  # GET /post289s/new
  # GET /post289s/new.xml
  def new
    @post289 = Post289.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post289 }
    end
  end

  # GET /post289s/1/edit
  def edit
    @post289 = Post289.find(params[:id])
  end

  # POST /post289s
  # POST /post289s.xml
  def create
    @post289 = Post289.new(params[:post289])

    respond_to do |format|
      if @post289.save
        format.html { redirect_to(@post289, :notice => 'Post289 was successfully created.') }
        format.xml  { render :xml => @post289, :status => :created, :location => @post289 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post289.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post289s/1
  # PUT /post289s/1.xml
  def update
    @post289 = Post289.find(params[:id])

    respond_to do |format|
      if @post289.update_attributes(params[:post289])
        format.html { redirect_to(@post289, :notice => 'Post289 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post289.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post289s/1
  # DELETE /post289s/1.xml
  def destroy
    @post289 = Post289.find(params[:id])
    @post289.destroy

    respond_to do |format|
      format.html { redirect_to(post289s_url) }
      format.xml  { head :ok }
    end
  end
end
