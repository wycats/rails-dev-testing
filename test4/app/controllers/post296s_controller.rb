class Post296sController < ApplicationController
  # GET /post296s
  # GET /post296s.xml
  def index
    @post296s = Post296.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post296s }
    end
  end

  # GET /post296s/1
  # GET /post296s/1.xml
  def show
    @post296 = Post296.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post296 }
    end
  end

  # GET /post296s/new
  # GET /post296s/new.xml
  def new
    @post296 = Post296.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post296 }
    end
  end

  # GET /post296s/1/edit
  def edit
    @post296 = Post296.find(params[:id])
  end

  # POST /post296s
  # POST /post296s.xml
  def create
    @post296 = Post296.new(params[:post296])

    respond_to do |format|
      if @post296.save
        format.html { redirect_to(@post296, :notice => 'Post296 was successfully created.') }
        format.xml  { render :xml => @post296, :status => :created, :location => @post296 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post296.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post296s/1
  # PUT /post296s/1.xml
  def update
    @post296 = Post296.find(params[:id])

    respond_to do |format|
      if @post296.update_attributes(params[:post296])
        format.html { redirect_to(@post296, :notice => 'Post296 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post296.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post296s/1
  # DELETE /post296s/1.xml
  def destroy
    @post296 = Post296.find(params[:id])
    @post296.destroy

    respond_to do |format|
      format.html { redirect_to(post296s_url) }
      format.xml  { head :ok }
    end
  end
end
