class Post199sController < ApplicationController
  # GET /post199s
  # GET /post199s.xml
  def index
    @post199s = Post199.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post199s }
    end
  end

  # GET /post199s/1
  # GET /post199s/1.xml
  def show
    @post199 = Post199.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post199 }
    end
  end

  # GET /post199s/new
  # GET /post199s/new.xml
  def new
    @post199 = Post199.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post199 }
    end
  end

  # GET /post199s/1/edit
  def edit
    @post199 = Post199.find(params[:id])
  end

  # POST /post199s
  # POST /post199s.xml
  def create
    @post199 = Post199.new(params[:post199])

    respond_to do |format|
      if @post199.save
        format.html { redirect_to(@post199, :notice => 'Post199 was successfully created.') }
        format.xml  { render :xml => @post199, :status => :created, :location => @post199 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post199.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post199s/1
  # PUT /post199s/1.xml
  def update
    @post199 = Post199.find(params[:id])

    respond_to do |format|
      if @post199.update_attributes(params[:post199])
        format.html { redirect_to(@post199, :notice => 'Post199 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post199.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post199s/1
  # DELETE /post199s/1.xml
  def destroy
    @post199 = Post199.find(params[:id])
    @post199.destroy

    respond_to do |format|
      format.html { redirect_to(post199s_url) }
      format.xml  { head :ok }
    end
  end
end
