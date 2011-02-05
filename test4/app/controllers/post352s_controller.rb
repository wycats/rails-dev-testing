class Post352sController < ApplicationController
  # GET /post352s
  # GET /post352s.xml
  def index
    @post352s = Post352.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post352s }
    end
  end

  # GET /post352s/1
  # GET /post352s/1.xml
  def show
    @post352 = Post352.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post352 }
    end
  end

  # GET /post352s/new
  # GET /post352s/new.xml
  def new
    @post352 = Post352.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post352 }
    end
  end

  # GET /post352s/1/edit
  def edit
    @post352 = Post352.find(params[:id])
  end

  # POST /post352s
  # POST /post352s.xml
  def create
    @post352 = Post352.new(params[:post352])

    respond_to do |format|
      if @post352.save
        format.html { redirect_to(@post352, :notice => 'Post352 was successfully created.') }
        format.xml  { render :xml => @post352, :status => :created, :location => @post352 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post352.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post352s/1
  # PUT /post352s/1.xml
  def update
    @post352 = Post352.find(params[:id])

    respond_to do |format|
      if @post352.update_attributes(params[:post352])
        format.html { redirect_to(@post352, :notice => 'Post352 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post352.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post352s/1
  # DELETE /post352s/1.xml
  def destroy
    @post352 = Post352.find(params[:id])
    @post352.destroy

    respond_to do |format|
      format.html { redirect_to(post352s_url) }
      format.xml  { head :ok }
    end
  end
end
