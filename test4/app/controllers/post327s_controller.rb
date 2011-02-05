class Post327sController < ApplicationController
  # GET /post327s
  # GET /post327s.xml
  def index
    @post327s = Post327.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post327s }
    end
  end

  # GET /post327s/1
  # GET /post327s/1.xml
  def show
    @post327 = Post327.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post327 }
    end
  end

  # GET /post327s/new
  # GET /post327s/new.xml
  def new
    @post327 = Post327.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post327 }
    end
  end

  # GET /post327s/1/edit
  def edit
    @post327 = Post327.find(params[:id])
  end

  # POST /post327s
  # POST /post327s.xml
  def create
    @post327 = Post327.new(params[:post327])

    respond_to do |format|
      if @post327.save
        format.html { redirect_to(@post327, :notice => 'Post327 was successfully created.') }
        format.xml  { render :xml => @post327, :status => :created, :location => @post327 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post327.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post327s/1
  # PUT /post327s/1.xml
  def update
    @post327 = Post327.find(params[:id])

    respond_to do |format|
      if @post327.update_attributes(params[:post327])
        format.html { redirect_to(@post327, :notice => 'Post327 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post327.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post327s/1
  # DELETE /post327s/1.xml
  def destroy
    @post327 = Post327.find(params[:id])
    @post327.destroy

    respond_to do |format|
      format.html { redirect_to(post327s_url) }
      format.xml  { head :ok }
    end
  end
end
