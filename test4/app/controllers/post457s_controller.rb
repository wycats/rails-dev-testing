class Post457sController < ApplicationController
  # GET /post457s
  # GET /post457s.xml
  def index
    @post457s = Post457.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post457s }
    end
  end

  # GET /post457s/1
  # GET /post457s/1.xml
  def show
    @post457 = Post457.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post457 }
    end
  end

  # GET /post457s/new
  # GET /post457s/new.xml
  def new
    @post457 = Post457.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post457 }
    end
  end

  # GET /post457s/1/edit
  def edit
    @post457 = Post457.find(params[:id])
  end

  # POST /post457s
  # POST /post457s.xml
  def create
    @post457 = Post457.new(params[:post457])

    respond_to do |format|
      if @post457.save
        format.html { redirect_to(@post457, :notice => 'Post457 was successfully created.') }
        format.xml  { render :xml => @post457, :status => :created, :location => @post457 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post457.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post457s/1
  # PUT /post457s/1.xml
  def update
    @post457 = Post457.find(params[:id])

    respond_to do |format|
      if @post457.update_attributes(params[:post457])
        format.html { redirect_to(@post457, :notice => 'Post457 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post457.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post457s/1
  # DELETE /post457s/1.xml
  def destroy
    @post457 = Post457.find(params[:id])
    @post457.destroy

    respond_to do |format|
      format.html { redirect_to(post457s_url) }
      format.xml  { head :ok }
    end
  end
end
