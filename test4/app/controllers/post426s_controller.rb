class Post426sController < ApplicationController
  # GET /post426s
  # GET /post426s.xml
  def index
    @post426s = Post426.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post426s }
    end
  end

  # GET /post426s/1
  # GET /post426s/1.xml
  def show
    @post426 = Post426.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post426 }
    end
  end

  # GET /post426s/new
  # GET /post426s/new.xml
  def new
    @post426 = Post426.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post426 }
    end
  end

  # GET /post426s/1/edit
  def edit
    @post426 = Post426.find(params[:id])
  end

  # POST /post426s
  # POST /post426s.xml
  def create
    @post426 = Post426.new(params[:post426])

    respond_to do |format|
      if @post426.save
        format.html { redirect_to(@post426, :notice => 'Post426 was successfully created.') }
        format.xml  { render :xml => @post426, :status => :created, :location => @post426 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post426.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post426s/1
  # PUT /post426s/1.xml
  def update
    @post426 = Post426.find(params[:id])

    respond_to do |format|
      if @post426.update_attributes(params[:post426])
        format.html { redirect_to(@post426, :notice => 'Post426 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post426.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post426s/1
  # DELETE /post426s/1.xml
  def destroy
    @post426 = Post426.find(params[:id])
    @post426.destroy

    respond_to do |format|
      format.html { redirect_to(post426s_url) }
      format.xml  { head :ok }
    end
  end
end
