class Post174sController < ApplicationController
  # GET /post174s
  # GET /post174s.xml
  def index
    @post174s = Post174.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post174s }
    end
  end

  # GET /post174s/1
  # GET /post174s/1.xml
  def show
    @post174 = Post174.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post174 }
    end
  end

  # GET /post174s/new
  # GET /post174s/new.xml
  def new
    @post174 = Post174.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post174 }
    end
  end

  # GET /post174s/1/edit
  def edit
    @post174 = Post174.find(params[:id])
  end

  # POST /post174s
  # POST /post174s.xml
  def create
    @post174 = Post174.new(params[:post174])

    respond_to do |format|
      if @post174.save
        format.html { redirect_to(@post174, :notice => 'Post174 was successfully created.') }
        format.xml  { render :xml => @post174, :status => :created, :location => @post174 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post174.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post174s/1
  # PUT /post174s/1.xml
  def update
    @post174 = Post174.find(params[:id])

    respond_to do |format|
      if @post174.update_attributes(params[:post174])
        format.html { redirect_to(@post174, :notice => 'Post174 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post174.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post174s/1
  # DELETE /post174s/1.xml
  def destroy
    @post174 = Post174.find(params[:id])
    @post174.destroy

    respond_to do |format|
      format.html { redirect_to(post174s_url) }
      format.xml  { head :ok }
    end
  end
end
