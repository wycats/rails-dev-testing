class Post204sController < ApplicationController
  # GET /post204s
  # GET /post204s.xml
  def index
    @post204s = Post204.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post204s }
    end
  end

  # GET /post204s/1
  # GET /post204s/1.xml
  def show
    @post204 = Post204.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post204 }
    end
  end

  # GET /post204s/new
  # GET /post204s/new.xml
  def new
    @post204 = Post204.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post204 }
    end
  end

  # GET /post204s/1/edit
  def edit
    @post204 = Post204.find(params[:id])
  end

  # POST /post204s
  # POST /post204s.xml
  def create
    @post204 = Post204.new(params[:post204])

    respond_to do |format|
      if @post204.save
        format.html { redirect_to(@post204, :notice => 'Post204 was successfully created.') }
        format.xml  { render :xml => @post204, :status => :created, :location => @post204 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post204.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post204s/1
  # PUT /post204s/1.xml
  def update
    @post204 = Post204.find(params[:id])

    respond_to do |format|
      if @post204.update_attributes(params[:post204])
        format.html { redirect_to(@post204, :notice => 'Post204 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post204.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post204s/1
  # DELETE /post204s/1.xml
  def destroy
    @post204 = Post204.find(params[:id])
    @post204.destroy

    respond_to do |format|
      format.html { redirect_to(post204s_url) }
      format.xml  { head :ok }
    end
  end
end
