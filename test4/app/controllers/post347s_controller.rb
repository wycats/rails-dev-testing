class Post347sController < ApplicationController
  # GET /post347s
  # GET /post347s.xml
  def index
    @post347s = Post347.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post347s }
    end
  end

  # GET /post347s/1
  # GET /post347s/1.xml
  def show
    @post347 = Post347.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post347 }
    end
  end

  # GET /post347s/new
  # GET /post347s/new.xml
  def new
    @post347 = Post347.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post347 }
    end
  end

  # GET /post347s/1/edit
  def edit
    @post347 = Post347.find(params[:id])
  end

  # POST /post347s
  # POST /post347s.xml
  def create
    @post347 = Post347.new(params[:post347])

    respond_to do |format|
      if @post347.save
        format.html { redirect_to(@post347, :notice => 'Post347 was successfully created.') }
        format.xml  { render :xml => @post347, :status => :created, :location => @post347 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post347.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post347s/1
  # PUT /post347s/1.xml
  def update
    @post347 = Post347.find(params[:id])

    respond_to do |format|
      if @post347.update_attributes(params[:post347])
        format.html { redirect_to(@post347, :notice => 'Post347 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post347.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post347s/1
  # DELETE /post347s/1.xml
  def destroy
    @post347 = Post347.find(params[:id])
    @post347.destroy

    respond_to do |format|
      format.html { redirect_to(post347s_url) }
      format.xml  { head :ok }
    end
  end
end
