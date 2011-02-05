class Post274sController < ApplicationController
  # GET /post274s
  # GET /post274s.xml
  def index
    @post274s = Post274.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post274s }
    end
  end

  # GET /post274s/1
  # GET /post274s/1.xml
  def show
    @post274 = Post274.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post274 }
    end
  end

  # GET /post274s/new
  # GET /post274s/new.xml
  def new
    @post274 = Post274.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post274 }
    end
  end

  # GET /post274s/1/edit
  def edit
    @post274 = Post274.find(params[:id])
  end

  # POST /post274s
  # POST /post274s.xml
  def create
    @post274 = Post274.new(params[:post274])

    respond_to do |format|
      if @post274.save
        format.html { redirect_to(@post274, :notice => 'Post274 was successfully created.') }
        format.xml  { render :xml => @post274, :status => :created, :location => @post274 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post274.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post274s/1
  # PUT /post274s/1.xml
  def update
    @post274 = Post274.find(params[:id])

    respond_to do |format|
      if @post274.update_attributes(params[:post274])
        format.html { redirect_to(@post274, :notice => 'Post274 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post274.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post274s/1
  # DELETE /post274s/1.xml
  def destroy
    @post274 = Post274.find(params[:id])
    @post274.destroy

    respond_to do |format|
      format.html { redirect_to(post274s_url) }
      format.xml  { head :ok }
    end
  end
end
