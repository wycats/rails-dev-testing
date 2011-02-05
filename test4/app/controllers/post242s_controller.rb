class Post242sController < ApplicationController
  # GET /post242s
  # GET /post242s.xml
  def index
    @post242s = Post242.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post242s }
    end
  end

  # GET /post242s/1
  # GET /post242s/1.xml
  def show
    @post242 = Post242.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post242 }
    end
  end

  # GET /post242s/new
  # GET /post242s/new.xml
  def new
    @post242 = Post242.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post242 }
    end
  end

  # GET /post242s/1/edit
  def edit
    @post242 = Post242.find(params[:id])
  end

  # POST /post242s
  # POST /post242s.xml
  def create
    @post242 = Post242.new(params[:post242])

    respond_to do |format|
      if @post242.save
        format.html { redirect_to(@post242, :notice => 'Post242 was successfully created.') }
        format.xml  { render :xml => @post242, :status => :created, :location => @post242 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post242.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post242s/1
  # PUT /post242s/1.xml
  def update
    @post242 = Post242.find(params[:id])

    respond_to do |format|
      if @post242.update_attributes(params[:post242])
        format.html { redirect_to(@post242, :notice => 'Post242 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post242.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post242s/1
  # DELETE /post242s/1.xml
  def destroy
    @post242 = Post242.find(params[:id])
    @post242.destroy

    respond_to do |format|
      format.html { redirect_to(post242s_url) }
      format.xml  { head :ok }
    end
  end
end
