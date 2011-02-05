class Post339sController < ApplicationController
  # GET /post339s
  # GET /post339s.xml
  def index
    @post339s = Post339.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post339s }
    end
  end

  # GET /post339s/1
  # GET /post339s/1.xml
  def show
    @post339 = Post339.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post339 }
    end
  end

  # GET /post339s/new
  # GET /post339s/new.xml
  def new
    @post339 = Post339.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post339 }
    end
  end

  # GET /post339s/1/edit
  def edit
    @post339 = Post339.find(params[:id])
  end

  # POST /post339s
  # POST /post339s.xml
  def create
    @post339 = Post339.new(params[:post339])

    respond_to do |format|
      if @post339.save
        format.html { redirect_to(@post339, :notice => 'Post339 was successfully created.') }
        format.xml  { render :xml => @post339, :status => :created, :location => @post339 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post339.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post339s/1
  # PUT /post339s/1.xml
  def update
    @post339 = Post339.find(params[:id])

    respond_to do |format|
      if @post339.update_attributes(params[:post339])
        format.html { redirect_to(@post339, :notice => 'Post339 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post339.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post339s/1
  # DELETE /post339s/1.xml
  def destroy
    @post339 = Post339.find(params[:id])
    @post339.destroy

    respond_to do |format|
      format.html { redirect_to(post339s_url) }
      format.xml  { head :ok }
    end
  end
end
