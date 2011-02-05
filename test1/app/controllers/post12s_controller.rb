class Post12sController < ApplicationController
  # GET /post12s
  # GET /post12s.xml
  def index
    @post12s = Post12.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post12s }
    end
  end

  # GET /post12s/1
  # GET /post12s/1.xml
  def show
    @post12 = Post12.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post12 }
    end
  end

  # GET /post12s/new
  # GET /post12s/new.xml
  def new
    @post12 = Post12.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post12 }
    end
  end

  # GET /post12s/1/edit
  def edit
    @post12 = Post12.find(params[:id])
  end

  # POST /post12s
  # POST /post12s.xml
  def create
    @post12 = Post12.new(params[:post12])

    respond_to do |format|
      if @post12.save
        format.html { redirect_to(@post12, :notice => 'Post12 was successfully created.') }
        format.xml  { render :xml => @post12, :status => :created, :location => @post12 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post12.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post12s/1
  # PUT /post12s/1.xml
  def update
    @post12 = Post12.find(params[:id])

    respond_to do |format|
      if @post12.update_attributes(params[:post12])
        format.html { redirect_to(@post12, :notice => 'Post12 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post12.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post12s/1
  # DELETE /post12s/1.xml
  def destroy
    @post12 = Post12.find(params[:id])
    @post12.destroy

    respond_to do |format|
      format.html { redirect_to(post12s_url) }
      format.xml  { head :ok }
    end
  end
end
