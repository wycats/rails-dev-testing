class Post16sController < ApplicationController
  # GET /post16s
  # GET /post16s.xml
  def index
    @post16s = Post16.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post16s }
    end
  end

  # GET /post16s/1
  # GET /post16s/1.xml
  def show
    @post16 = Post16.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post16 }
    end
  end

  # GET /post16s/new
  # GET /post16s/new.xml
  def new
    @post16 = Post16.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post16 }
    end
  end

  # GET /post16s/1/edit
  def edit
    @post16 = Post16.find(params[:id])
  end

  # POST /post16s
  # POST /post16s.xml
  def create
    @post16 = Post16.new(params[:post16])

    respond_to do |format|
      if @post16.save
        format.html { redirect_to(@post16, :notice => 'Post16 was successfully created.') }
        format.xml  { render :xml => @post16, :status => :created, :location => @post16 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post16.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post16s/1
  # PUT /post16s/1.xml
  def update
    @post16 = Post16.find(params[:id])

    respond_to do |format|
      if @post16.update_attributes(params[:post16])
        format.html { redirect_to(@post16, :notice => 'Post16 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post16.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post16s/1
  # DELETE /post16s/1.xml
  def destroy
    @post16 = Post16.find(params[:id])
    @post16.destroy

    respond_to do |format|
      format.html { redirect_to(post16s_url) }
      format.xml  { head :ok }
    end
  end
end
