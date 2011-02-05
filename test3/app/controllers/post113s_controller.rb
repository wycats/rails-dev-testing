class Post113sController < ApplicationController
  # GET /post113s
  # GET /post113s.xml
  def index
    @post113s = Post113.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post113s }
    end
  end

  # GET /post113s/1
  # GET /post113s/1.xml
  def show
    @post113 = Post113.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post113 }
    end
  end

  # GET /post113s/new
  # GET /post113s/new.xml
  def new
    @post113 = Post113.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post113 }
    end
  end

  # GET /post113s/1/edit
  def edit
    @post113 = Post113.find(params[:id])
  end

  # POST /post113s
  # POST /post113s.xml
  def create
    @post113 = Post113.new(params[:post113])

    respond_to do |format|
      if @post113.save
        format.html { redirect_to(@post113, :notice => 'Post113 was successfully created.') }
        format.xml  { render :xml => @post113, :status => :created, :location => @post113 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post113.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post113s/1
  # PUT /post113s/1.xml
  def update
    @post113 = Post113.find(params[:id])

    respond_to do |format|
      if @post113.update_attributes(params[:post113])
        format.html { redirect_to(@post113, :notice => 'Post113 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post113.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post113s/1
  # DELETE /post113s/1.xml
  def destroy
    @post113 = Post113.find(params[:id])
    @post113.destroy

    respond_to do |format|
      format.html { redirect_to(post113s_url) }
      format.xml  { head :ok }
    end
  end
end
