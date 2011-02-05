class Post211sController < ApplicationController
  # GET /post211s
  # GET /post211s.xml
  def index
    @post211s = Post211.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post211s }
    end
  end

  # GET /post211s/1
  # GET /post211s/1.xml
  def show
    @post211 = Post211.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post211 }
    end
  end

  # GET /post211s/new
  # GET /post211s/new.xml
  def new
    @post211 = Post211.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post211 }
    end
  end

  # GET /post211s/1/edit
  def edit
    @post211 = Post211.find(params[:id])
  end

  # POST /post211s
  # POST /post211s.xml
  def create
    @post211 = Post211.new(params[:post211])

    respond_to do |format|
      if @post211.save
        format.html { redirect_to(@post211, :notice => 'Post211 was successfully created.') }
        format.xml  { render :xml => @post211, :status => :created, :location => @post211 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post211.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post211s/1
  # PUT /post211s/1.xml
  def update
    @post211 = Post211.find(params[:id])

    respond_to do |format|
      if @post211.update_attributes(params[:post211])
        format.html { redirect_to(@post211, :notice => 'Post211 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post211.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post211s/1
  # DELETE /post211s/1.xml
  def destroy
    @post211 = Post211.find(params[:id])
    @post211.destroy

    respond_to do |format|
      format.html { redirect_to(post211s_url) }
      format.xml  { head :ok }
    end
  end
end
