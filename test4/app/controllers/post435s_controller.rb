class Post435sController < ApplicationController
  # GET /post435s
  # GET /post435s.xml
  def index
    @post435s = Post435.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post435s }
    end
  end

  # GET /post435s/1
  # GET /post435s/1.xml
  def show
    @post435 = Post435.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post435 }
    end
  end

  # GET /post435s/new
  # GET /post435s/new.xml
  def new
    @post435 = Post435.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post435 }
    end
  end

  # GET /post435s/1/edit
  def edit
    @post435 = Post435.find(params[:id])
  end

  # POST /post435s
  # POST /post435s.xml
  def create
    @post435 = Post435.new(params[:post435])

    respond_to do |format|
      if @post435.save
        format.html { redirect_to(@post435, :notice => 'Post435 was successfully created.') }
        format.xml  { render :xml => @post435, :status => :created, :location => @post435 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post435.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post435s/1
  # PUT /post435s/1.xml
  def update
    @post435 = Post435.find(params[:id])

    respond_to do |format|
      if @post435.update_attributes(params[:post435])
        format.html { redirect_to(@post435, :notice => 'Post435 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post435.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post435s/1
  # DELETE /post435s/1.xml
  def destroy
    @post435 = Post435.find(params[:id])
    @post435.destroy

    respond_to do |format|
      format.html { redirect_to(post435s_url) }
      format.xml  { head :ok }
    end
  end
end
