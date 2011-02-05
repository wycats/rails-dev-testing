class Post85sController < ApplicationController
  # GET /post85s
  # GET /post85s.xml
  def index
    @post85s = Post85.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post85s }
    end
  end

  # GET /post85s/1
  # GET /post85s/1.xml
  def show
    @post85 = Post85.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post85 }
    end
  end

  # GET /post85s/new
  # GET /post85s/new.xml
  def new
    @post85 = Post85.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post85 }
    end
  end

  # GET /post85s/1/edit
  def edit
    @post85 = Post85.find(params[:id])
  end

  # POST /post85s
  # POST /post85s.xml
  def create
    @post85 = Post85.new(params[:post85])

    respond_to do |format|
      if @post85.save
        format.html { redirect_to(@post85, :notice => 'Post85 was successfully created.') }
        format.xml  { render :xml => @post85, :status => :created, :location => @post85 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post85.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post85s/1
  # PUT /post85s/1.xml
  def update
    @post85 = Post85.find(params[:id])

    respond_to do |format|
      if @post85.update_attributes(params[:post85])
        format.html { redirect_to(@post85, :notice => 'Post85 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post85.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post85s/1
  # DELETE /post85s/1.xml
  def destroy
    @post85 = Post85.find(params[:id])
    @post85.destroy

    respond_to do |format|
      format.html { redirect_to(post85s_url) }
      format.xml  { head :ok }
    end
  end
end
