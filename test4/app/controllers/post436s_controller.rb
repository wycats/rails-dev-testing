class Post436sController < ApplicationController
  # GET /post436s
  # GET /post436s.xml
  def index
    @post436s = Post436.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post436s }
    end
  end

  # GET /post436s/1
  # GET /post436s/1.xml
  def show
    @post436 = Post436.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post436 }
    end
  end

  # GET /post436s/new
  # GET /post436s/new.xml
  def new
    @post436 = Post436.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post436 }
    end
  end

  # GET /post436s/1/edit
  def edit
    @post436 = Post436.find(params[:id])
  end

  # POST /post436s
  # POST /post436s.xml
  def create
    @post436 = Post436.new(params[:post436])

    respond_to do |format|
      if @post436.save
        format.html { redirect_to(@post436, :notice => 'Post436 was successfully created.') }
        format.xml  { render :xml => @post436, :status => :created, :location => @post436 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post436.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post436s/1
  # PUT /post436s/1.xml
  def update
    @post436 = Post436.find(params[:id])

    respond_to do |format|
      if @post436.update_attributes(params[:post436])
        format.html { redirect_to(@post436, :notice => 'Post436 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post436.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post436s/1
  # DELETE /post436s/1.xml
  def destroy
    @post436 = Post436.find(params[:id])
    @post436.destroy

    respond_to do |format|
      format.html { redirect_to(post436s_url) }
      format.xml  { head :ok }
    end
  end
end
