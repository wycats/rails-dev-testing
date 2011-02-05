class Post406sController < ApplicationController
  # GET /post406s
  # GET /post406s.xml
  def index
    @post406s = Post406.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post406s }
    end
  end

  # GET /post406s/1
  # GET /post406s/1.xml
  def show
    @post406 = Post406.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post406 }
    end
  end

  # GET /post406s/new
  # GET /post406s/new.xml
  def new
    @post406 = Post406.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post406 }
    end
  end

  # GET /post406s/1/edit
  def edit
    @post406 = Post406.find(params[:id])
  end

  # POST /post406s
  # POST /post406s.xml
  def create
    @post406 = Post406.new(params[:post406])

    respond_to do |format|
      if @post406.save
        format.html { redirect_to(@post406, :notice => 'Post406 was successfully created.') }
        format.xml  { render :xml => @post406, :status => :created, :location => @post406 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post406.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post406s/1
  # PUT /post406s/1.xml
  def update
    @post406 = Post406.find(params[:id])

    respond_to do |format|
      if @post406.update_attributes(params[:post406])
        format.html { redirect_to(@post406, :notice => 'Post406 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post406.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post406s/1
  # DELETE /post406s/1.xml
  def destroy
    @post406 = Post406.find(params[:id])
    @post406.destroy

    respond_to do |format|
      format.html { redirect_to(post406s_url) }
      format.xml  { head :ok }
    end
  end
end
