class Post369sController < ApplicationController
  # GET /post369s
  # GET /post369s.xml
  def index
    @post369s = Post369.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post369s }
    end
  end

  # GET /post369s/1
  # GET /post369s/1.xml
  def show
    @post369 = Post369.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post369 }
    end
  end

  # GET /post369s/new
  # GET /post369s/new.xml
  def new
    @post369 = Post369.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post369 }
    end
  end

  # GET /post369s/1/edit
  def edit
    @post369 = Post369.find(params[:id])
  end

  # POST /post369s
  # POST /post369s.xml
  def create
    @post369 = Post369.new(params[:post369])

    respond_to do |format|
      if @post369.save
        format.html { redirect_to(@post369, :notice => 'Post369 was successfully created.') }
        format.xml  { render :xml => @post369, :status => :created, :location => @post369 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post369.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post369s/1
  # PUT /post369s/1.xml
  def update
    @post369 = Post369.find(params[:id])

    respond_to do |format|
      if @post369.update_attributes(params[:post369])
        format.html { redirect_to(@post369, :notice => 'Post369 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post369.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post369s/1
  # DELETE /post369s/1.xml
  def destroy
    @post369 = Post369.find(params[:id])
    @post369.destroy

    respond_to do |format|
      format.html { redirect_to(post369s_url) }
      format.xml  { head :ok }
    end
  end
end
