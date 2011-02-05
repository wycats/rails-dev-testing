class Post284sController < ApplicationController
  # GET /post284s
  # GET /post284s.xml
  def index
    @post284s = Post284.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post284s }
    end
  end

  # GET /post284s/1
  # GET /post284s/1.xml
  def show
    @post284 = Post284.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post284 }
    end
  end

  # GET /post284s/new
  # GET /post284s/new.xml
  def new
    @post284 = Post284.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post284 }
    end
  end

  # GET /post284s/1/edit
  def edit
    @post284 = Post284.find(params[:id])
  end

  # POST /post284s
  # POST /post284s.xml
  def create
    @post284 = Post284.new(params[:post284])

    respond_to do |format|
      if @post284.save
        format.html { redirect_to(@post284, :notice => 'Post284 was successfully created.') }
        format.xml  { render :xml => @post284, :status => :created, :location => @post284 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post284.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post284s/1
  # PUT /post284s/1.xml
  def update
    @post284 = Post284.find(params[:id])

    respond_to do |format|
      if @post284.update_attributes(params[:post284])
        format.html { redirect_to(@post284, :notice => 'Post284 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post284.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post284s/1
  # DELETE /post284s/1.xml
  def destroy
    @post284 = Post284.find(params[:id])
    @post284.destroy

    respond_to do |format|
      format.html { redirect_to(post284s_url) }
      format.xml  { head :ok }
    end
  end
end
