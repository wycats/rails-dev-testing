class Post385sController < ApplicationController
  # GET /post385s
  # GET /post385s.xml
  def index
    @post385s = Post385.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post385s }
    end
  end

  # GET /post385s/1
  # GET /post385s/1.xml
  def show
    @post385 = Post385.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post385 }
    end
  end

  # GET /post385s/new
  # GET /post385s/new.xml
  def new
    @post385 = Post385.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post385 }
    end
  end

  # GET /post385s/1/edit
  def edit
    @post385 = Post385.find(params[:id])
  end

  # POST /post385s
  # POST /post385s.xml
  def create
    @post385 = Post385.new(params[:post385])

    respond_to do |format|
      if @post385.save
        format.html { redirect_to(@post385, :notice => 'Post385 was successfully created.') }
        format.xml  { render :xml => @post385, :status => :created, :location => @post385 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post385.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post385s/1
  # PUT /post385s/1.xml
  def update
    @post385 = Post385.find(params[:id])

    respond_to do |format|
      if @post385.update_attributes(params[:post385])
        format.html { redirect_to(@post385, :notice => 'Post385 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post385.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post385s/1
  # DELETE /post385s/1.xml
  def destroy
    @post385 = Post385.find(params[:id])
    @post385.destroy

    respond_to do |format|
      format.html { redirect_to(post385s_url) }
      format.xml  { head :ok }
    end
  end
end
