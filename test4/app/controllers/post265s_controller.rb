class Post265sController < ApplicationController
  # GET /post265s
  # GET /post265s.xml
  def index
    @post265s = Post265.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post265s }
    end
  end

  # GET /post265s/1
  # GET /post265s/1.xml
  def show
    @post265 = Post265.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post265 }
    end
  end

  # GET /post265s/new
  # GET /post265s/new.xml
  def new
    @post265 = Post265.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post265 }
    end
  end

  # GET /post265s/1/edit
  def edit
    @post265 = Post265.find(params[:id])
  end

  # POST /post265s
  # POST /post265s.xml
  def create
    @post265 = Post265.new(params[:post265])

    respond_to do |format|
      if @post265.save
        format.html { redirect_to(@post265, :notice => 'Post265 was successfully created.') }
        format.xml  { render :xml => @post265, :status => :created, :location => @post265 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post265.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post265s/1
  # PUT /post265s/1.xml
  def update
    @post265 = Post265.find(params[:id])

    respond_to do |format|
      if @post265.update_attributes(params[:post265])
        format.html { redirect_to(@post265, :notice => 'Post265 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post265.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post265s/1
  # DELETE /post265s/1.xml
  def destroy
    @post265 = Post265.find(params[:id])
    @post265.destroy

    respond_to do |format|
      format.html { redirect_to(post265s_url) }
      format.xml  { head :ok }
    end
  end
end
