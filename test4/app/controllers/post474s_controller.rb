class Post474sController < ApplicationController
  # GET /post474s
  # GET /post474s.xml
  def index
    @post474s = Post474.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post474s }
    end
  end

  # GET /post474s/1
  # GET /post474s/1.xml
  def show
    @post474 = Post474.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post474 }
    end
  end

  # GET /post474s/new
  # GET /post474s/new.xml
  def new
    @post474 = Post474.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post474 }
    end
  end

  # GET /post474s/1/edit
  def edit
    @post474 = Post474.find(params[:id])
  end

  # POST /post474s
  # POST /post474s.xml
  def create
    @post474 = Post474.new(params[:post474])

    respond_to do |format|
      if @post474.save
        format.html { redirect_to(@post474, :notice => 'Post474 was successfully created.') }
        format.xml  { render :xml => @post474, :status => :created, :location => @post474 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post474.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post474s/1
  # PUT /post474s/1.xml
  def update
    @post474 = Post474.find(params[:id])

    respond_to do |format|
      if @post474.update_attributes(params[:post474])
        format.html { redirect_to(@post474, :notice => 'Post474 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post474.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post474s/1
  # DELETE /post474s/1.xml
  def destroy
    @post474 = Post474.find(params[:id])
    @post474.destroy

    respond_to do |format|
      format.html { redirect_to(post474s_url) }
      format.xml  { head :ok }
    end
  end
end
