class Post316sController < ApplicationController
  # GET /post316s
  # GET /post316s.xml
  def index
    @post316s = Post316.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post316s }
    end
  end

  # GET /post316s/1
  # GET /post316s/1.xml
  def show
    @post316 = Post316.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post316 }
    end
  end

  # GET /post316s/new
  # GET /post316s/new.xml
  def new
    @post316 = Post316.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post316 }
    end
  end

  # GET /post316s/1/edit
  def edit
    @post316 = Post316.find(params[:id])
  end

  # POST /post316s
  # POST /post316s.xml
  def create
    @post316 = Post316.new(params[:post316])

    respond_to do |format|
      if @post316.save
        format.html { redirect_to(@post316, :notice => 'Post316 was successfully created.') }
        format.xml  { render :xml => @post316, :status => :created, :location => @post316 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post316.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post316s/1
  # PUT /post316s/1.xml
  def update
    @post316 = Post316.find(params[:id])

    respond_to do |format|
      if @post316.update_attributes(params[:post316])
        format.html { redirect_to(@post316, :notice => 'Post316 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post316.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post316s/1
  # DELETE /post316s/1.xml
  def destroy
    @post316 = Post316.find(params[:id])
    @post316.destroy

    respond_to do |format|
      format.html { redirect_to(post316s_url) }
      format.xml  { head :ok }
    end
  end
end
