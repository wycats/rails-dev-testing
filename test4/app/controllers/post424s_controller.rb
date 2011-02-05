class Post424sController < ApplicationController
  # GET /post424s
  # GET /post424s.xml
  def index
    @post424s = Post424.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post424s }
    end
  end

  # GET /post424s/1
  # GET /post424s/1.xml
  def show
    @post424 = Post424.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post424 }
    end
  end

  # GET /post424s/new
  # GET /post424s/new.xml
  def new
    @post424 = Post424.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post424 }
    end
  end

  # GET /post424s/1/edit
  def edit
    @post424 = Post424.find(params[:id])
  end

  # POST /post424s
  # POST /post424s.xml
  def create
    @post424 = Post424.new(params[:post424])

    respond_to do |format|
      if @post424.save
        format.html { redirect_to(@post424, :notice => 'Post424 was successfully created.') }
        format.xml  { render :xml => @post424, :status => :created, :location => @post424 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post424.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post424s/1
  # PUT /post424s/1.xml
  def update
    @post424 = Post424.find(params[:id])

    respond_to do |format|
      if @post424.update_attributes(params[:post424])
        format.html { redirect_to(@post424, :notice => 'Post424 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post424.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post424s/1
  # DELETE /post424s/1.xml
  def destroy
    @post424 = Post424.find(params[:id])
    @post424.destroy

    respond_to do |format|
      format.html { redirect_to(post424s_url) }
      format.xml  { head :ok }
    end
  end
end
