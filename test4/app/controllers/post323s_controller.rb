class Post323sController < ApplicationController
  # GET /post323s
  # GET /post323s.xml
  def index
    @post323s = Post323.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post323s }
    end
  end

  # GET /post323s/1
  # GET /post323s/1.xml
  def show
    @post323 = Post323.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post323 }
    end
  end

  # GET /post323s/new
  # GET /post323s/new.xml
  def new
    @post323 = Post323.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post323 }
    end
  end

  # GET /post323s/1/edit
  def edit
    @post323 = Post323.find(params[:id])
  end

  # POST /post323s
  # POST /post323s.xml
  def create
    @post323 = Post323.new(params[:post323])

    respond_to do |format|
      if @post323.save
        format.html { redirect_to(@post323, :notice => 'Post323 was successfully created.') }
        format.xml  { render :xml => @post323, :status => :created, :location => @post323 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post323.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post323s/1
  # PUT /post323s/1.xml
  def update
    @post323 = Post323.find(params[:id])

    respond_to do |format|
      if @post323.update_attributes(params[:post323])
        format.html { redirect_to(@post323, :notice => 'Post323 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post323.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post323s/1
  # DELETE /post323s/1.xml
  def destroy
    @post323 = Post323.find(params[:id])
    @post323.destroy

    respond_to do |format|
      format.html { redirect_to(post323s_url) }
      format.xml  { head :ok }
    end
  end
end
