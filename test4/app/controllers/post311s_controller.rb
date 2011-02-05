class Post311sController < ApplicationController
  # GET /post311s
  # GET /post311s.xml
  def index
    @post311s = Post311.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post311s }
    end
  end

  # GET /post311s/1
  # GET /post311s/1.xml
  def show
    @post311 = Post311.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post311 }
    end
  end

  # GET /post311s/new
  # GET /post311s/new.xml
  def new
    @post311 = Post311.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post311 }
    end
  end

  # GET /post311s/1/edit
  def edit
    @post311 = Post311.find(params[:id])
  end

  # POST /post311s
  # POST /post311s.xml
  def create
    @post311 = Post311.new(params[:post311])

    respond_to do |format|
      if @post311.save
        format.html { redirect_to(@post311, :notice => 'Post311 was successfully created.') }
        format.xml  { render :xml => @post311, :status => :created, :location => @post311 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post311.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post311s/1
  # PUT /post311s/1.xml
  def update
    @post311 = Post311.find(params[:id])

    respond_to do |format|
      if @post311.update_attributes(params[:post311])
        format.html { redirect_to(@post311, :notice => 'Post311 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post311.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post311s/1
  # DELETE /post311s/1.xml
  def destroy
    @post311 = Post311.find(params[:id])
    @post311.destroy

    respond_to do |format|
      format.html { redirect_to(post311s_url) }
      format.xml  { head :ok }
    end
  end
end
