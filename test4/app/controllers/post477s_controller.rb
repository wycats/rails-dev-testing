class Post477sController < ApplicationController
  # GET /post477s
  # GET /post477s.xml
  def index
    @post477s = Post477.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post477s }
    end
  end

  # GET /post477s/1
  # GET /post477s/1.xml
  def show
    @post477 = Post477.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post477 }
    end
  end

  # GET /post477s/new
  # GET /post477s/new.xml
  def new
    @post477 = Post477.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post477 }
    end
  end

  # GET /post477s/1/edit
  def edit
    @post477 = Post477.find(params[:id])
  end

  # POST /post477s
  # POST /post477s.xml
  def create
    @post477 = Post477.new(params[:post477])

    respond_to do |format|
      if @post477.save
        format.html { redirect_to(@post477, :notice => 'Post477 was successfully created.') }
        format.xml  { render :xml => @post477, :status => :created, :location => @post477 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post477.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post477s/1
  # PUT /post477s/1.xml
  def update
    @post477 = Post477.find(params[:id])

    respond_to do |format|
      if @post477.update_attributes(params[:post477])
        format.html { redirect_to(@post477, :notice => 'Post477 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post477.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post477s/1
  # DELETE /post477s/1.xml
  def destroy
    @post477 = Post477.find(params[:id])
    @post477.destroy

    respond_to do |format|
      format.html { redirect_to(post477s_url) }
      format.xml  { head :ok }
    end
  end
end
