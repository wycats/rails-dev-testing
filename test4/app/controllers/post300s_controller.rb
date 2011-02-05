class Post300sController < ApplicationController
  # GET /post300s
  # GET /post300s.xml
  def index
    @post300s = Post300.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post300s }
    end
  end

  # GET /post300s/1
  # GET /post300s/1.xml
  def show
    @post300 = Post300.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post300 }
    end
  end

  # GET /post300s/new
  # GET /post300s/new.xml
  def new
    @post300 = Post300.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post300 }
    end
  end

  # GET /post300s/1/edit
  def edit
    @post300 = Post300.find(params[:id])
  end

  # POST /post300s
  # POST /post300s.xml
  def create
    @post300 = Post300.new(params[:post300])

    respond_to do |format|
      if @post300.save
        format.html { redirect_to(@post300, :notice => 'Post300 was successfully created.') }
        format.xml  { render :xml => @post300, :status => :created, :location => @post300 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post300.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post300s/1
  # PUT /post300s/1.xml
  def update
    @post300 = Post300.find(params[:id])

    respond_to do |format|
      if @post300.update_attributes(params[:post300])
        format.html { redirect_to(@post300, :notice => 'Post300 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post300.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post300s/1
  # DELETE /post300s/1.xml
  def destroy
    @post300 = Post300.find(params[:id])
    @post300.destroy

    respond_to do |format|
      format.html { redirect_to(post300s_url) }
      format.xml  { head :ok }
    end
  end
end
