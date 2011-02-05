class Post336sController < ApplicationController
  # GET /post336s
  # GET /post336s.xml
  def index
    @post336s = Post336.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post336s }
    end
  end

  # GET /post336s/1
  # GET /post336s/1.xml
  def show
    @post336 = Post336.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post336 }
    end
  end

  # GET /post336s/new
  # GET /post336s/new.xml
  def new
    @post336 = Post336.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post336 }
    end
  end

  # GET /post336s/1/edit
  def edit
    @post336 = Post336.find(params[:id])
  end

  # POST /post336s
  # POST /post336s.xml
  def create
    @post336 = Post336.new(params[:post336])

    respond_to do |format|
      if @post336.save
        format.html { redirect_to(@post336, :notice => 'Post336 was successfully created.') }
        format.xml  { render :xml => @post336, :status => :created, :location => @post336 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post336.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post336s/1
  # PUT /post336s/1.xml
  def update
    @post336 = Post336.find(params[:id])

    respond_to do |format|
      if @post336.update_attributes(params[:post336])
        format.html { redirect_to(@post336, :notice => 'Post336 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post336.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post336s/1
  # DELETE /post336s/1.xml
  def destroy
    @post336 = Post336.find(params[:id])
    @post336.destroy

    respond_to do |format|
      format.html { redirect_to(post336s_url) }
      format.xml  { head :ok }
    end
  end
end
