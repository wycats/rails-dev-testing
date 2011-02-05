class Post31sController < ApplicationController
  # GET /post31s
  # GET /post31s.xml
  def index
    @post31s = Post31.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post31s }
    end
  end

  # GET /post31s/1
  # GET /post31s/1.xml
  def show
    @post31 = Post31.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post31 }
    end
  end

  # GET /post31s/new
  # GET /post31s/new.xml
  def new
    @post31 = Post31.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post31 }
    end
  end

  # GET /post31s/1/edit
  def edit
    @post31 = Post31.find(params[:id])
  end

  # POST /post31s
  # POST /post31s.xml
  def create
    @post31 = Post31.new(params[:post31])

    respond_to do |format|
      if @post31.save
        format.html { redirect_to(@post31, :notice => 'Post31 was successfully created.') }
        format.xml  { render :xml => @post31, :status => :created, :location => @post31 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post31.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post31s/1
  # PUT /post31s/1.xml
  def update
    @post31 = Post31.find(params[:id])

    respond_to do |format|
      if @post31.update_attributes(params[:post31])
        format.html { redirect_to(@post31, :notice => 'Post31 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post31.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post31s/1
  # DELETE /post31s/1.xml
  def destroy
    @post31 = Post31.find(params[:id])
    @post31.destroy

    respond_to do |format|
      format.html { redirect_to(post31s_url) }
      format.xml  { head :ok }
    end
  end
end
