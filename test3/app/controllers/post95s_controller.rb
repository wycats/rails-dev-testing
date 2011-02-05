class Post95sController < ApplicationController
  # GET /post95s
  # GET /post95s.xml
  def index
    @post95s = Post95.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post95s }
    end
  end

  # GET /post95s/1
  # GET /post95s/1.xml
  def show
    @post95 = Post95.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post95 }
    end
  end

  # GET /post95s/new
  # GET /post95s/new.xml
  def new
    @post95 = Post95.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post95 }
    end
  end

  # GET /post95s/1/edit
  def edit
    @post95 = Post95.find(params[:id])
  end

  # POST /post95s
  # POST /post95s.xml
  def create
    @post95 = Post95.new(params[:post95])

    respond_to do |format|
      if @post95.save
        format.html { redirect_to(@post95, :notice => 'Post95 was successfully created.') }
        format.xml  { render :xml => @post95, :status => :created, :location => @post95 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post95.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post95s/1
  # PUT /post95s/1.xml
  def update
    @post95 = Post95.find(params[:id])

    respond_to do |format|
      if @post95.update_attributes(params[:post95])
        format.html { redirect_to(@post95, :notice => 'Post95 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post95.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post95s/1
  # DELETE /post95s/1.xml
  def destroy
    @post95 = Post95.find(params[:id])
    @post95.destroy

    respond_to do |format|
      format.html { redirect_to(post95s_url) }
      format.xml  { head :ok }
    end
  end
end
