class Post118sController < ApplicationController
  # GET /post118s
  # GET /post118s.xml
  def index
    @post118s = Post118.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post118s }
    end
  end

  # GET /post118s/1
  # GET /post118s/1.xml
  def show
    @post118 = Post118.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post118 }
    end
  end

  # GET /post118s/new
  # GET /post118s/new.xml
  def new
    @post118 = Post118.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post118 }
    end
  end

  # GET /post118s/1/edit
  def edit
    @post118 = Post118.find(params[:id])
  end

  # POST /post118s
  # POST /post118s.xml
  def create
    @post118 = Post118.new(params[:post118])

    respond_to do |format|
      if @post118.save
        format.html { redirect_to(@post118, :notice => 'Post118 was successfully created.') }
        format.xml  { render :xml => @post118, :status => :created, :location => @post118 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post118.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post118s/1
  # PUT /post118s/1.xml
  def update
    @post118 = Post118.find(params[:id])

    respond_to do |format|
      if @post118.update_attributes(params[:post118])
        format.html { redirect_to(@post118, :notice => 'Post118 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post118.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post118s/1
  # DELETE /post118s/1.xml
  def destroy
    @post118 = Post118.find(params[:id])
    @post118.destroy

    respond_to do |format|
      format.html { redirect_to(post118s_url) }
      format.xml  { head :ok }
    end
  end
end
