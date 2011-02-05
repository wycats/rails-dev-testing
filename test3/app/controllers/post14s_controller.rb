class Post14sController < ApplicationController
  # GET /post14s
  # GET /post14s.xml
  def index
    @post14s = Post14.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post14s }
    end
  end

  # GET /post14s/1
  # GET /post14s/1.xml
  def show
    @post14 = Post14.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post14 }
    end
  end

  # GET /post14s/new
  # GET /post14s/new.xml
  def new
    @post14 = Post14.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post14 }
    end
  end

  # GET /post14s/1/edit
  def edit
    @post14 = Post14.find(params[:id])
  end

  # POST /post14s
  # POST /post14s.xml
  def create
    @post14 = Post14.new(params[:post14])

    respond_to do |format|
      if @post14.save
        format.html { redirect_to(@post14, :notice => 'Post14 was successfully created.') }
        format.xml  { render :xml => @post14, :status => :created, :location => @post14 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post14.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post14s/1
  # PUT /post14s/1.xml
  def update
    @post14 = Post14.find(params[:id])

    respond_to do |format|
      if @post14.update_attributes(params[:post14])
        format.html { redirect_to(@post14, :notice => 'Post14 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post14.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post14s/1
  # DELETE /post14s/1.xml
  def destroy
    @post14 = Post14.find(params[:id])
    @post14.destroy

    respond_to do |format|
      format.html { redirect_to(post14s_url) }
      format.xml  { head :ok }
    end
  end
end
