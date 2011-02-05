class Post36sController < ApplicationController
  # GET /post36s
  # GET /post36s.xml
  def index
    @post36s = Post36.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post36s }
    end
  end

  # GET /post36s/1
  # GET /post36s/1.xml
  def show
    @post36 = Post36.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post36 }
    end
  end

  # GET /post36s/new
  # GET /post36s/new.xml
  def new
    @post36 = Post36.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post36 }
    end
  end

  # GET /post36s/1/edit
  def edit
    @post36 = Post36.find(params[:id])
  end

  # POST /post36s
  # POST /post36s.xml
  def create
    @post36 = Post36.new(params[:post36])

    respond_to do |format|
      if @post36.save
        format.html { redirect_to(@post36, :notice => 'Post36 was successfully created.') }
        format.xml  { render :xml => @post36, :status => :created, :location => @post36 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post36.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post36s/1
  # PUT /post36s/1.xml
  def update
    @post36 = Post36.find(params[:id])

    respond_to do |format|
      if @post36.update_attributes(params[:post36])
        format.html { redirect_to(@post36, :notice => 'Post36 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post36.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post36s/1
  # DELETE /post36s/1.xml
  def destroy
    @post36 = Post36.find(params[:id])
    @post36.destroy

    respond_to do |format|
      format.html { redirect_to(post36s_url) }
      format.xml  { head :ok }
    end
  end
end
