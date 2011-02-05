class Post151sController < ApplicationController
  # GET /post151s
  # GET /post151s.xml
  def index
    @post151s = Post151.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post151s }
    end
  end

  # GET /post151s/1
  # GET /post151s/1.xml
  def show
    @post151 = Post151.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post151 }
    end
  end

  # GET /post151s/new
  # GET /post151s/new.xml
  def new
    @post151 = Post151.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post151 }
    end
  end

  # GET /post151s/1/edit
  def edit
    @post151 = Post151.find(params[:id])
  end

  # POST /post151s
  # POST /post151s.xml
  def create
    @post151 = Post151.new(params[:post151])

    respond_to do |format|
      if @post151.save
        format.html { redirect_to(@post151, :notice => 'Post151 was successfully created.') }
        format.xml  { render :xml => @post151, :status => :created, :location => @post151 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post151.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post151s/1
  # PUT /post151s/1.xml
  def update
    @post151 = Post151.find(params[:id])

    respond_to do |format|
      if @post151.update_attributes(params[:post151])
        format.html { redirect_to(@post151, :notice => 'Post151 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post151.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post151s/1
  # DELETE /post151s/1.xml
  def destroy
    @post151 = Post151.find(params[:id])
    @post151.destroy

    respond_to do |format|
      format.html { redirect_to(post151s_url) }
      format.xml  { head :ok }
    end
  end
end
