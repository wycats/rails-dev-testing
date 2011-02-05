class Post382sController < ApplicationController
  # GET /post382s
  # GET /post382s.xml
  def index
    @post382s = Post382.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post382s }
    end
  end

  # GET /post382s/1
  # GET /post382s/1.xml
  def show
    @post382 = Post382.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post382 }
    end
  end

  # GET /post382s/new
  # GET /post382s/new.xml
  def new
    @post382 = Post382.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post382 }
    end
  end

  # GET /post382s/1/edit
  def edit
    @post382 = Post382.find(params[:id])
  end

  # POST /post382s
  # POST /post382s.xml
  def create
    @post382 = Post382.new(params[:post382])

    respond_to do |format|
      if @post382.save
        format.html { redirect_to(@post382, :notice => 'Post382 was successfully created.') }
        format.xml  { render :xml => @post382, :status => :created, :location => @post382 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post382.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post382s/1
  # PUT /post382s/1.xml
  def update
    @post382 = Post382.find(params[:id])

    respond_to do |format|
      if @post382.update_attributes(params[:post382])
        format.html { redirect_to(@post382, :notice => 'Post382 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post382.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post382s/1
  # DELETE /post382s/1.xml
  def destroy
    @post382 = Post382.find(params[:id])
    @post382.destroy

    respond_to do |format|
      format.html { redirect_to(post382s_url) }
      format.xml  { head :ok }
    end
  end
end
