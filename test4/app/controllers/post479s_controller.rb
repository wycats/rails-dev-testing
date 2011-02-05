class Post479sController < ApplicationController
  # GET /post479s
  # GET /post479s.xml
  def index
    @post479s = Post479.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post479s }
    end
  end

  # GET /post479s/1
  # GET /post479s/1.xml
  def show
    @post479 = Post479.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post479 }
    end
  end

  # GET /post479s/new
  # GET /post479s/new.xml
  def new
    @post479 = Post479.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post479 }
    end
  end

  # GET /post479s/1/edit
  def edit
    @post479 = Post479.find(params[:id])
  end

  # POST /post479s
  # POST /post479s.xml
  def create
    @post479 = Post479.new(params[:post479])

    respond_to do |format|
      if @post479.save
        format.html { redirect_to(@post479, :notice => 'Post479 was successfully created.') }
        format.xml  { render :xml => @post479, :status => :created, :location => @post479 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post479.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post479s/1
  # PUT /post479s/1.xml
  def update
    @post479 = Post479.find(params[:id])

    respond_to do |format|
      if @post479.update_attributes(params[:post479])
        format.html { redirect_to(@post479, :notice => 'Post479 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post479.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post479s/1
  # DELETE /post479s/1.xml
  def destroy
    @post479 = Post479.find(params[:id])
    @post479.destroy

    respond_to do |format|
      format.html { redirect_to(post479s_url) }
      format.xml  { head :ok }
    end
  end
end
