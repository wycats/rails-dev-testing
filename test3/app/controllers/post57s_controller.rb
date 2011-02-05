class Post57sController < ApplicationController
  # GET /post57s
  # GET /post57s.xml
  def index
    @post57s = Post57.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post57s }
    end
  end

  # GET /post57s/1
  # GET /post57s/1.xml
  def show
    @post57 = Post57.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post57 }
    end
  end

  # GET /post57s/new
  # GET /post57s/new.xml
  def new
    @post57 = Post57.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post57 }
    end
  end

  # GET /post57s/1/edit
  def edit
    @post57 = Post57.find(params[:id])
  end

  # POST /post57s
  # POST /post57s.xml
  def create
    @post57 = Post57.new(params[:post57])

    respond_to do |format|
      if @post57.save
        format.html { redirect_to(@post57, :notice => 'Post57 was successfully created.') }
        format.xml  { render :xml => @post57, :status => :created, :location => @post57 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post57.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post57s/1
  # PUT /post57s/1.xml
  def update
    @post57 = Post57.find(params[:id])

    respond_to do |format|
      if @post57.update_attributes(params[:post57])
        format.html { redirect_to(@post57, :notice => 'Post57 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post57.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post57s/1
  # DELETE /post57s/1.xml
  def destroy
    @post57 = Post57.find(params[:id])
    @post57.destroy

    respond_to do |format|
      format.html { redirect_to(post57s_url) }
      format.xml  { head :ok }
    end
  end
end
