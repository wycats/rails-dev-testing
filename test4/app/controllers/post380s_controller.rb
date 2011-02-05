class Post380sController < ApplicationController
  # GET /post380s
  # GET /post380s.xml
  def index
    @post380s = Post380.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post380s }
    end
  end

  # GET /post380s/1
  # GET /post380s/1.xml
  def show
    @post380 = Post380.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post380 }
    end
  end

  # GET /post380s/new
  # GET /post380s/new.xml
  def new
    @post380 = Post380.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post380 }
    end
  end

  # GET /post380s/1/edit
  def edit
    @post380 = Post380.find(params[:id])
  end

  # POST /post380s
  # POST /post380s.xml
  def create
    @post380 = Post380.new(params[:post380])

    respond_to do |format|
      if @post380.save
        format.html { redirect_to(@post380, :notice => 'Post380 was successfully created.') }
        format.xml  { render :xml => @post380, :status => :created, :location => @post380 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post380.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post380s/1
  # PUT /post380s/1.xml
  def update
    @post380 = Post380.find(params[:id])

    respond_to do |format|
      if @post380.update_attributes(params[:post380])
        format.html { redirect_to(@post380, :notice => 'Post380 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post380.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post380s/1
  # DELETE /post380s/1.xml
  def destroy
    @post380 = Post380.find(params[:id])
    @post380.destroy

    respond_to do |format|
      format.html { redirect_to(post380s_url) }
      format.xml  { head :ok }
    end
  end
end
