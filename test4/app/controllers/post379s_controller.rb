class Post379sController < ApplicationController
  # GET /post379s
  # GET /post379s.xml
  def index
    @post379s = Post379.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post379s }
    end
  end

  # GET /post379s/1
  # GET /post379s/1.xml
  def show
    @post379 = Post379.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post379 }
    end
  end

  # GET /post379s/new
  # GET /post379s/new.xml
  def new
    @post379 = Post379.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post379 }
    end
  end

  # GET /post379s/1/edit
  def edit
    @post379 = Post379.find(params[:id])
  end

  # POST /post379s
  # POST /post379s.xml
  def create
    @post379 = Post379.new(params[:post379])

    respond_to do |format|
      if @post379.save
        format.html { redirect_to(@post379, :notice => 'Post379 was successfully created.') }
        format.xml  { render :xml => @post379, :status => :created, :location => @post379 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post379.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post379s/1
  # PUT /post379s/1.xml
  def update
    @post379 = Post379.find(params[:id])

    respond_to do |format|
      if @post379.update_attributes(params[:post379])
        format.html { redirect_to(@post379, :notice => 'Post379 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post379.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post379s/1
  # DELETE /post379s/1.xml
  def destroy
    @post379 = Post379.find(params[:id])
    @post379.destroy

    respond_to do |format|
      format.html { redirect_to(post379s_url) }
      format.xml  { head :ok }
    end
  end
end
