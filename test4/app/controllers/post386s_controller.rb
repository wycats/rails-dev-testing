class Post386sController < ApplicationController
  # GET /post386s
  # GET /post386s.xml
  def index
    @post386s = Post386.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post386s }
    end
  end

  # GET /post386s/1
  # GET /post386s/1.xml
  def show
    @post386 = Post386.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post386 }
    end
  end

  # GET /post386s/new
  # GET /post386s/new.xml
  def new
    @post386 = Post386.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post386 }
    end
  end

  # GET /post386s/1/edit
  def edit
    @post386 = Post386.find(params[:id])
  end

  # POST /post386s
  # POST /post386s.xml
  def create
    @post386 = Post386.new(params[:post386])

    respond_to do |format|
      if @post386.save
        format.html { redirect_to(@post386, :notice => 'Post386 was successfully created.') }
        format.xml  { render :xml => @post386, :status => :created, :location => @post386 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post386.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post386s/1
  # PUT /post386s/1.xml
  def update
    @post386 = Post386.find(params[:id])

    respond_to do |format|
      if @post386.update_attributes(params[:post386])
        format.html { redirect_to(@post386, :notice => 'Post386 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post386.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post386s/1
  # DELETE /post386s/1.xml
  def destroy
    @post386 = Post386.find(params[:id])
    @post386.destroy

    respond_to do |format|
      format.html { redirect_to(post386s_url) }
      format.xml  { head :ok }
    end
  end
end
