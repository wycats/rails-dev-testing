class Post179sController < ApplicationController
  # GET /post179s
  # GET /post179s.xml
  def index
    @post179s = Post179.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post179s }
    end
  end

  # GET /post179s/1
  # GET /post179s/1.xml
  def show
    @post179 = Post179.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post179 }
    end
  end

  # GET /post179s/new
  # GET /post179s/new.xml
  def new
    @post179 = Post179.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post179 }
    end
  end

  # GET /post179s/1/edit
  def edit
    @post179 = Post179.find(params[:id])
  end

  # POST /post179s
  # POST /post179s.xml
  def create
    @post179 = Post179.new(params[:post179])

    respond_to do |format|
      if @post179.save
        format.html { redirect_to(@post179, :notice => 'Post179 was successfully created.') }
        format.xml  { render :xml => @post179, :status => :created, :location => @post179 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post179.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post179s/1
  # PUT /post179s/1.xml
  def update
    @post179 = Post179.find(params[:id])

    respond_to do |format|
      if @post179.update_attributes(params[:post179])
        format.html { redirect_to(@post179, :notice => 'Post179 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post179.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post179s/1
  # DELETE /post179s/1.xml
  def destroy
    @post179 = Post179.find(params[:id])
    @post179.destroy

    respond_to do |format|
      format.html { redirect_to(post179s_url) }
      format.xml  { head :ok }
    end
  end
end
