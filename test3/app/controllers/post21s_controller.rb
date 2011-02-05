class Post21sController < ApplicationController
  # GET /post21s
  # GET /post21s.xml
  def index
    @post21s = Post21.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post21s }
    end
  end

  # GET /post21s/1
  # GET /post21s/1.xml
  def show
    @post21 = Post21.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post21 }
    end
  end

  # GET /post21s/new
  # GET /post21s/new.xml
  def new
    @post21 = Post21.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post21 }
    end
  end

  # GET /post21s/1/edit
  def edit
    @post21 = Post21.find(params[:id])
  end

  # POST /post21s
  # POST /post21s.xml
  def create
    @post21 = Post21.new(params[:post21])

    respond_to do |format|
      if @post21.save
        format.html { redirect_to(@post21, :notice => 'Post21 was successfully created.') }
        format.xml  { render :xml => @post21, :status => :created, :location => @post21 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post21.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post21s/1
  # PUT /post21s/1.xml
  def update
    @post21 = Post21.find(params[:id])

    respond_to do |format|
      if @post21.update_attributes(params[:post21])
        format.html { redirect_to(@post21, :notice => 'Post21 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post21.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post21s/1
  # DELETE /post21s/1.xml
  def destroy
    @post21 = Post21.find(params[:id])
    @post21.destroy

    respond_to do |format|
      format.html { redirect_to(post21s_url) }
      format.xml  { head :ok }
    end
  end
end
