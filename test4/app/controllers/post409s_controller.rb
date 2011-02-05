class Post409sController < ApplicationController
  # GET /post409s
  # GET /post409s.xml
  def index
    @post409s = Post409.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post409s }
    end
  end

  # GET /post409s/1
  # GET /post409s/1.xml
  def show
    @post409 = Post409.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post409 }
    end
  end

  # GET /post409s/new
  # GET /post409s/new.xml
  def new
    @post409 = Post409.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post409 }
    end
  end

  # GET /post409s/1/edit
  def edit
    @post409 = Post409.find(params[:id])
  end

  # POST /post409s
  # POST /post409s.xml
  def create
    @post409 = Post409.new(params[:post409])

    respond_to do |format|
      if @post409.save
        format.html { redirect_to(@post409, :notice => 'Post409 was successfully created.') }
        format.xml  { render :xml => @post409, :status => :created, :location => @post409 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post409.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post409s/1
  # PUT /post409s/1.xml
  def update
    @post409 = Post409.find(params[:id])

    respond_to do |format|
      if @post409.update_attributes(params[:post409])
        format.html { redirect_to(@post409, :notice => 'Post409 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post409.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post409s/1
  # DELETE /post409s/1.xml
  def destroy
    @post409 = Post409.find(params[:id])
    @post409.destroy

    respond_to do |format|
      format.html { redirect_to(post409s_url) }
      format.xml  { head :ok }
    end
  end
end
