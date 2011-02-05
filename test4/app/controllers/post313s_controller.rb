class Post313sController < ApplicationController
  # GET /post313s
  # GET /post313s.xml
  def index
    @post313s = Post313.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post313s }
    end
  end

  # GET /post313s/1
  # GET /post313s/1.xml
  def show
    @post313 = Post313.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post313 }
    end
  end

  # GET /post313s/new
  # GET /post313s/new.xml
  def new
    @post313 = Post313.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post313 }
    end
  end

  # GET /post313s/1/edit
  def edit
    @post313 = Post313.find(params[:id])
  end

  # POST /post313s
  # POST /post313s.xml
  def create
    @post313 = Post313.new(params[:post313])

    respond_to do |format|
      if @post313.save
        format.html { redirect_to(@post313, :notice => 'Post313 was successfully created.') }
        format.xml  { render :xml => @post313, :status => :created, :location => @post313 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post313.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post313s/1
  # PUT /post313s/1.xml
  def update
    @post313 = Post313.find(params[:id])

    respond_to do |format|
      if @post313.update_attributes(params[:post313])
        format.html { redirect_to(@post313, :notice => 'Post313 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post313.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post313s/1
  # DELETE /post313s/1.xml
  def destroy
    @post313 = Post313.find(params[:id])
    @post313.destroy

    respond_to do |format|
      format.html { redirect_to(post313s_url) }
      format.xml  { head :ok }
    end
  end
end
