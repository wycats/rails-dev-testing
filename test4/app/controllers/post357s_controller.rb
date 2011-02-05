class Post357sController < ApplicationController
  # GET /post357s
  # GET /post357s.xml
  def index
    @post357s = Post357.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post357s }
    end
  end

  # GET /post357s/1
  # GET /post357s/1.xml
  def show
    @post357 = Post357.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post357 }
    end
  end

  # GET /post357s/new
  # GET /post357s/new.xml
  def new
    @post357 = Post357.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post357 }
    end
  end

  # GET /post357s/1/edit
  def edit
    @post357 = Post357.find(params[:id])
  end

  # POST /post357s
  # POST /post357s.xml
  def create
    @post357 = Post357.new(params[:post357])

    respond_to do |format|
      if @post357.save
        format.html { redirect_to(@post357, :notice => 'Post357 was successfully created.') }
        format.xml  { render :xml => @post357, :status => :created, :location => @post357 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post357.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post357s/1
  # PUT /post357s/1.xml
  def update
    @post357 = Post357.find(params[:id])

    respond_to do |format|
      if @post357.update_attributes(params[:post357])
        format.html { redirect_to(@post357, :notice => 'Post357 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post357.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post357s/1
  # DELETE /post357s/1.xml
  def destroy
    @post357 = Post357.find(params[:id])
    @post357.destroy

    respond_to do |format|
      format.html { redirect_to(post357s_url) }
      format.xml  { head :ok }
    end
  end
end
