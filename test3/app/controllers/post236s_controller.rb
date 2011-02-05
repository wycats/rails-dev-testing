class Post236sController < ApplicationController
  # GET /post236s
  # GET /post236s.xml
  def index
    @post236s = Post236.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post236s }
    end
  end

  # GET /post236s/1
  # GET /post236s/1.xml
  def show
    @post236 = Post236.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post236 }
    end
  end

  # GET /post236s/new
  # GET /post236s/new.xml
  def new
    @post236 = Post236.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post236 }
    end
  end

  # GET /post236s/1/edit
  def edit
    @post236 = Post236.find(params[:id])
  end

  # POST /post236s
  # POST /post236s.xml
  def create
    @post236 = Post236.new(params[:post236])

    respond_to do |format|
      if @post236.save
        format.html { redirect_to(@post236, :notice => 'Post236 was successfully created.') }
        format.xml  { render :xml => @post236, :status => :created, :location => @post236 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post236.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post236s/1
  # PUT /post236s/1.xml
  def update
    @post236 = Post236.find(params[:id])

    respond_to do |format|
      if @post236.update_attributes(params[:post236])
        format.html { redirect_to(@post236, :notice => 'Post236 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post236.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post236s/1
  # DELETE /post236s/1.xml
  def destroy
    @post236 = Post236.find(params[:id])
    @post236.destroy

    respond_to do |format|
      format.html { redirect_to(post236s_url) }
      format.xml  { head :ok }
    end
  end
end
