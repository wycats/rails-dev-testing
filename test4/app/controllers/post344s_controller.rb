class Post344sController < ApplicationController
  # GET /post344s
  # GET /post344s.xml
  def index
    @post344s = Post344.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post344s }
    end
  end

  # GET /post344s/1
  # GET /post344s/1.xml
  def show
    @post344 = Post344.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post344 }
    end
  end

  # GET /post344s/new
  # GET /post344s/new.xml
  def new
    @post344 = Post344.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post344 }
    end
  end

  # GET /post344s/1/edit
  def edit
    @post344 = Post344.find(params[:id])
  end

  # POST /post344s
  # POST /post344s.xml
  def create
    @post344 = Post344.new(params[:post344])

    respond_to do |format|
      if @post344.save
        format.html { redirect_to(@post344, :notice => 'Post344 was successfully created.') }
        format.xml  { render :xml => @post344, :status => :created, :location => @post344 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post344.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post344s/1
  # PUT /post344s/1.xml
  def update
    @post344 = Post344.find(params[:id])

    respond_to do |format|
      if @post344.update_attributes(params[:post344])
        format.html { redirect_to(@post344, :notice => 'Post344 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post344.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post344s/1
  # DELETE /post344s/1.xml
  def destroy
    @post344 = Post344.find(params[:id])
    @post344.destroy

    respond_to do |format|
      format.html { redirect_to(post344s_url) }
      format.xml  { head :ok }
    end
  end
end
