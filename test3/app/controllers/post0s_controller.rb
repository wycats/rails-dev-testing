class Post0sController < ApplicationController
  # GET /post0s
  # GET /post0s.xml
  def index
    @post0s = Post0.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post0s }
    end
  end

  # GET /post0s/1
  # GET /post0s/1.xml
  def show
    @post0 = Post0.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post0 }
    end
  end

  # GET /post0s/new
  # GET /post0s/new.xml
  def new
    @post0 = Post0.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post0 }
    end
  end

  # GET /post0s/1/edit
  def edit
    @post0 = Post0.find(params[:id])
  end

  # POST /post0s
  # POST /post0s.xml
  def create
    @post0 = Post0.new(params[:post0])

    respond_to do |format|
      if @post0.save
        format.html { redirect_to(@post0, :notice => 'Post0 was successfully created.') }
        format.xml  { render :xml => @post0, :status => :created, :location => @post0 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post0.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post0s/1
  # PUT /post0s/1.xml
  def update
    @post0 = Post0.find(params[:id])

    respond_to do |format|
      if @post0.update_attributes(params[:post0])
        format.html { redirect_to(@post0, :notice => 'Post0 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post0.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post0s/1
  # DELETE /post0s/1.xml
  def destroy
    @post0 = Post0.find(params[:id])
    @post0.destroy

    respond_to do |format|
      format.html { redirect_to(post0s_url) }
      format.xml  { head :ok }
    end
  end
end
