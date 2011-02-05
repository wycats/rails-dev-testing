class Post476sController < ApplicationController
  # GET /post476s
  # GET /post476s.xml
  def index
    @post476s = Post476.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post476s }
    end
  end

  # GET /post476s/1
  # GET /post476s/1.xml
  def show
    @post476 = Post476.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post476 }
    end
  end

  # GET /post476s/new
  # GET /post476s/new.xml
  def new
    @post476 = Post476.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post476 }
    end
  end

  # GET /post476s/1/edit
  def edit
    @post476 = Post476.find(params[:id])
  end

  # POST /post476s
  # POST /post476s.xml
  def create
    @post476 = Post476.new(params[:post476])

    respond_to do |format|
      if @post476.save
        format.html { redirect_to(@post476, :notice => 'Post476 was successfully created.') }
        format.xml  { render :xml => @post476, :status => :created, :location => @post476 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post476.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post476s/1
  # PUT /post476s/1.xml
  def update
    @post476 = Post476.find(params[:id])

    respond_to do |format|
      if @post476.update_attributes(params[:post476])
        format.html { redirect_to(@post476, :notice => 'Post476 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post476.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post476s/1
  # DELETE /post476s/1.xml
  def destroy
    @post476 = Post476.find(params[:id])
    @post476.destroy

    respond_to do |format|
      format.html { redirect_to(post476s_url) }
      format.xml  { head :ok }
    end
  end
end
