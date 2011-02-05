class Post403sController < ApplicationController
  # GET /post403s
  # GET /post403s.xml
  def index
    @post403s = Post403.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post403s }
    end
  end

  # GET /post403s/1
  # GET /post403s/1.xml
  def show
    @post403 = Post403.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post403 }
    end
  end

  # GET /post403s/new
  # GET /post403s/new.xml
  def new
    @post403 = Post403.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post403 }
    end
  end

  # GET /post403s/1/edit
  def edit
    @post403 = Post403.find(params[:id])
  end

  # POST /post403s
  # POST /post403s.xml
  def create
    @post403 = Post403.new(params[:post403])

    respond_to do |format|
      if @post403.save
        format.html { redirect_to(@post403, :notice => 'Post403 was successfully created.') }
        format.xml  { render :xml => @post403, :status => :created, :location => @post403 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post403.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post403s/1
  # PUT /post403s/1.xml
  def update
    @post403 = Post403.find(params[:id])

    respond_to do |format|
      if @post403.update_attributes(params[:post403])
        format.html { redirect_to(@post403, :notice => 'Post403 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post403.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post403s/1
  # DELETE /post403s/1.xml
  def destroy
    @post403 = Post403.find(params[:id])
    @post403.destroy

    respond_to do |format|
      format.html { redirect_to(post403s_url) }
      format.xml  { head :ok }
    end
  end
end
