class Post140sController < ApplicationController
  # GET /post140s
  # GET /post140s.xml
  def index
    @post140s = Post140.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post140s }
    end
  end

  # GET /post140s/1
  # GET /post140s/1.xml
  def show
    @post140 = Post140.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post140 }
    end
  end

  # GET /post140s/new
  # GET /post140s/new.xml
  def new
    @post140 = Post140.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post140 }
    end
  end

  # GET /post140s/1/edit
  def edit
    @post140 = Post140.find(params[:id])
  end

  # POST /post140s
  # POST /post140s.xml
  def create
    @post140 = Post140.new(params[:post140])

    respond_to do |format|
      if @post140.save
        format.html { redirect_to(@post140, :notice => 'Post140 was successfully created.') }
        format.xml  { render :xml => @post140, :status => :created, :location => @post140 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post140.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post140s/1
  # PUT /post140s/1.xml
  def update
    @post140 = Post140.find(params[:id])

    respond_to do |format|
      if @post140.update_attributes(params[:post140])
        format.html { redirect_to(@post140, :notice => 'Post140 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post140.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post140s/1
  # DELETE /post140s/1.xml
  def destroy
    @post140 = Post140.find(params[:id])
    @post140.destroy

    respond_to do |format|
      format.html { redirect_to(post140s_url) }
      format.xml  { head :ok }
    end
  end
end
