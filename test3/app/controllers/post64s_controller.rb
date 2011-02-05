class Post64sController < ApplicationController
  # GET /post64s
  # GET /post64s.xml
  def index
    @post64s = Post64.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post64s }
    end
  end

  # GET /post64s/1
  # GET /post64s/1.xml
  def show
    @post64 = Post64.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post64 }
    end
  end

  # GET /post64s/new
  # GET /post64s/new.xml
  def new
    @post64 = Post64.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post64 }
    end
  end

  # GET /post64s/1/edit
  def edit
    @post64 = Post64.find(params[:id])
  end

  # POST /post64s
  # POST /post64s.xml
  def create
    @post64 = Post64.new(params[:post64])

    respond_to do |format|
      if @post64.save
        format.html { redirect_to(@post64, :notice => 'Post64 was successfully created.') }
        format.xml  { render :xml => @post64, :status => :created, :location => @post64 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post64.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post64s/1
  # PUT /post64s/1.xml
  def update
    @post64 = Post64.find(params[:id])

    respond_to do |format|
      if @post64.update_attributes(params[:post64])
        format.html { redirect_to(@post64, :notice => 'Post64 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post64.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post64s/1
  # DELETE /post64s/1.xml
  def destroy
    @post64 = Post64.find(params[:id])
    @post64.destroy

    respond_to do |format|
      format.html { redirect_to(post64s_url) }
      format.xml  { head :ok }
    end
  end
end
