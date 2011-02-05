class Post368sController < ApplicationController
  # GET /post368s
  # GET /post368s.xml
  def index
    @post368s = Post368.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post368s }
    end
  end

  # GET /post368s/1
  # GET /post368s/1.xml
  def show
    @post368 = Post368.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post368 }
    end
  end

  # GET /post368s/new
  # GET /post368s/new.xml
  def new
    @post368 = Post368.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post368 }
    end
  end

  # GET /post368s/1/edit
  def edit
    @post368 = Post368.find(params[:id])
  end

  # POST /post368s
  # POST /post368s.xml
  def create
    @post368 = Post368.new(params[:post368])

    respond_to do |format|
      if @post368.save
        format.html { redirect_to(@post368, :notice => 'Post368 was successfully created.') }
        format.xml  { render :xml => @post368, :status => :created, :location => @post368 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post368.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post368s/1
  # PUT /post368s/1.xml
  def update
    @post368 = Post368.find(params[:id])

    respond_to do |format|
      if @post368.update_attributes(params[:post368])
        format.html { redirect_to(@post368, :notice => 'Post368 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post368.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post368s/1
  # DELETE /post368s/1.xml
  def destroy
    @post368 = Post368.find(params[:id])
    @post368.destroy

    respond_to do |format|
      format.html { redirect_to(post368s_url) }
      format.xml  { head :ok }
    end
  end
end
