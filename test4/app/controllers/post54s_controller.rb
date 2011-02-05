class Post54sController < ApplicationController
  # GET /post54s
  # GET /post54s.xml
  def index
    @post54s = Post54.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post54s }
    end
  end

  # GET /post54s/1
  # GET /post54s/1.xml
  def show
    @post54 = Post54.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post54 }
    end
  end

  # GET /post54s/new
  # GET /post54s/new.xml
  def new
    @post54 = Post54.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post54 }
    end
  end

  # GET /post54s/1/edit
  def edit
    @post54 = Post54.find(params[:id])
  end

  # POST /post54s
  # POST /post54s.xml
  def create
    @post54 = Post54.new(params[:post54])

    respond_to do |format|
      if @post54.save
        format.html { redirect_to(@post54, :notice => 'Post54 was successfully created.') }
        format.xml  { render :xml => @post54, :status => :created, :location => @post54 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post54.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post54s/1
  # PUT /post54s/1.xml
  def update
    @post54 = Post54.find(params[:id])

    respond_to do |format|
      if @post54.update_attributes(params[:post54])
        format.html { redirect_to(@post54, :notice => 'Post54 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post54.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post54s/1
  # DELETE /post54s/1.xml
  def destroy
    @post54 = Post54.find(params[:id])
    @post54.destroy

    respond_to do |format|
      format.html { redirect_to(post54s_url) }
      format.xml  { head :ok }
    end
  end
end
