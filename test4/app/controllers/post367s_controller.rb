class Post367sController < ApplicationController
  # GET /post367s
  # GET /post367s.xml
  def index
    @post367s = Post367.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post367s }
    end
  end

  # GET /post367s/1
  # GET /post367s/1.xml
  def show
    @post367 = Post367.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post367 }
    end
  end

  # GET /post367s/new
  # GET /post367s/new.xml
  def new
    @post367 = Post367.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post367 }
    end
  end

  # GET /post367s/1/edit
  def edit
    @post367 = Post367.find(params[:id])
  end

  # POST /post367s
  # POST /post367s.xml
  def create
    @post367 = Post367.new(params[:post367])

    respond_to do |format|
      if @post367.save
        format.html { redirect_to(@post367, :notice => 'Post367 was successfully created.') }
        format.xml  { render :xml => @post367, :status => :created, :location => @post367 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post367.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post367s/1
  # PUT /post367s/1.xml
  def update
    @post367 = Post367.find(params[:id])

    respond_to do |format|
      if @post367.update_attributes(params[:post367])
        format.html { redirect_to(@post367, :notice => 'Post367 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post367.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post367s/1
  # DELETE /post367s/1.xml
  def destroy
    @post367 = Post367.find(params[:id])
    @post367.destroy

    respond_to do |format|
      format.html { redirect_to(post367s_url) }
      format.xml  { head :ok }
    end
  end
end
