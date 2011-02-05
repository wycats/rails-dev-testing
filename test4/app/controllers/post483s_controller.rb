class Post483sController < ApplicationController
  # GET /post483s
  # GET /post483s.xml
  def index
    @post483s = Post483.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post483s }
    end
  end

  # GET /post483s/1
  # GET /post483s/1.xml
  def show
    @post483 = Post483.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post483 }
    end
  end

  # GET /post483s/new
  # GET /post483s/new.xml
  def new
    @post483 = Post483.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post483 }
    end
  end

  # GET /post483s/1/edit
  def edit
    @post483 = Post483.find(params[:id])
  end

  # POST /post483s
  # POST /post483s.xml
  def create
    @post483 = Post483.new(params[:post483])

    respond_to do |format|
      if @post483.save
        format.html { redirect_to(@post483, :notice => 'Post483 was successfully created.') }
        format.xml  { render :xml => @post483, :status => :created, :location => @post483 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post483.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post483s/1
  # PUT /post483s/1.xml
  def update
    @post483 = Post483.find(params[:id])

    respond_to do |format|
      if @post483.update_attributes(params[:post483])
        format.html { redirect_to(@post483, :notice => 'Post483 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post483.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post483s/1
  # DELETE /post483s/1.xml
  def destroy
    @post483 = Post483.find(params[:id])
    @post483.destroy

    respond_to do |format|
      format.html { redirect_to(post483s_url) }
      format.xml  { head :ok }
    end
  end
end
