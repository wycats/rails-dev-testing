class Post192sController < ApplicationController
  # GET /post192s
  # GET /post192s.xml
  def index
    @post192s = Post192.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post192s }
    end
  end

  # GET /post192s/1
  # GET /post192s/1.xml
  def show
    @post192 = Post192.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post192 }
    end
  end

  # GET /post192s/new
  # GET /post192s/new.xml
  def new
    @post192 = Post192.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post192 }
    end
  end

  # GET /post192s/1/edit
  def edit
    @post192 = Post192.find(params[:id])
  end

  # POST /post192s
  # POST /post192s.xml
  def create
    @post192 = Post192.new(params[:post192])

    respond_to do |format|
      if @post192.save
        format.html { redirect_to(@post192, :notice => 'Post192 was successfully created.') }
        format.xml  { render :xml => @post192, :status => :created, :location => @post192 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post192.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post192s/1
  # PUT /post192s/1.xml
  def update
    @post192 = Post192.find(params[:id])

    respond_to do |format|
      if @post192.update_attributes(params[:post192])
        format.html { redirect_to(@post192, :notice => 'Post192 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post192.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post192s/1
  # DELETE /post192s/1.xml
  def destroy
    @post192 = Post192.find(params[:id])
    @post192.destroy

    respond_to do |format|
      format.html { redirect_to(post192s_url) }
      format.xml  { head :ok }
    end
  end
end
