class Post200sController < ApplicationController
  # GET /post200s
  # GET /post200s.xml
  def index
    @post200s = Post200.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post200s }
    end
  end

  # GET /post200s/1
  # GET /post200s/1.xml
  def show
    @post200 = Post200.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post200 }
    end
  end

  # GET /post200s/new
  # GET /post200s/new.xml
  def new
    @post200 = Post200.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post200 }
    end
  end

  # GET /post200s/1/edit
  def edit
    @post200 = Post200.find(params[:id])
  end

  # POST /post200s
  # POST /post200s.xml
  def create
    @post200 = Post200.new(params[:post200])

    respond_to do |format|
      if @post200.save
        format.html { redirect_to(@post200, :notice => 'Post200 was successfully created.') }
        format.xml  { render :xml => @post200, :status => :created, :location => @post200 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post200.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post200s/1
  # PUT /post200s/1.xml
  def update
    @post200 = Post200.find(params[:id])

    respond_to do |format|
      if @post200.update_attributes(params[:post200])
        format.html { redirect_to(@post200, :notice => 'Post200 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post200.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post200s/1
  # DELETE /post200s/1.xml
  def destroy
    @post200 = Post200.find(params[:id])
    @post200.destroy

    respond_to do |format|
      format.html { redirect_to(post200s_url) }
      format.xml  { head :ok }
    end
  end
end
