class Post306sController < ApplicationController
  # GET /post306s
  # GET /post306s.xml
  def index
    @post306s = Post306.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post306s }
    end
  end

  # GET /post306s/1
  # GET /post306s/1.xml
  def show
    @post306 = Post306.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post306 }
    end
  end

  # GET /post306s/new
  # GET /post306s/new.xml
  def new
    @post306 = Post306.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post306 }
    end
  end

  # GET /post306s/1/edit
  def edit
    @post306 = Post306.find(params[:id])
  end

  # POST /post306s
  # POST /post306s.xml
  def create
    @post306 = Post306.new(params[:post306])

    respond_to do |format|
      if @post306.save
        format.html { redirect_to(@post306, :notice => 'Post306 was successfully created.') }
        format.xml  { render :xml => @post306, :status => :created, :location => @post306 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post306.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post306s/1
  # PUT /post306s/1.xml
  def update
    @post306 = Post306.find(params[:id])

    respond_to do |format|
      if @post306.update_attributes(params[:post306])
        format.html { redirect_to(@post306, :notice => 'Post306 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post306.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post306s/1
  # DELETE /post306s/1.xml
  def destroy
    @post306 = Post306.find(params[:id])
    @post306.destroy

    respond_to do |format|
      format.html { redirect_to(post306s_url) }
      format.xml  { head :ok }
    end
  end
end
