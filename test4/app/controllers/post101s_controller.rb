class Post101sController < ApplicationController
  # GET /post101s
  # GET /post101s.xml
  def index
    @post101s = Post101.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post101s }
    end
  end

  # GET /post101s/1
  # GET /post101s/1.xml
  def show
    @post101 = Post101.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post101 }
    end
  end

  # GET /post101s/new
  # GET /post101s/new.xml
  def new
    @post101 = Post101.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post101 }
    end
  end

  # GET /post101s/1/edit
  def edit
    @post101 = Post101.find(params[:id])
  end

  # POST /post101s
  # POST /post101s.xml
  def create
    @post101 = Post101.new(params[:post101])

    respond_to do |format|
      if @post101.save
        format.html { redirect_to(@post101, :notice => 'Post101 was successfully created.') }
        format.xml  { render :xml => @post101, :status => :created, :location => @post101 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post101.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post101s/1
  # PUT /post101s/1.xml
  def update
    @post101 = Post101.find(params[:id])

    respond_to do |format|
      if @post101.update_attributes(params[:post101])
        format.html { redirect_to(@post101, :notice => 'Post101 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post101.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post101s/1
  # DELETE /post101s/1.xml
  def destroy
    @post101 = Post101.find(params[:id])
    @post101.destroy

    respond_to do |format|
      format.html { redirect_to(post101s_url) }
      format.xml  { head :ok }
    end
  end
end
