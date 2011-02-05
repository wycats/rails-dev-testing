class Post110sController < ApplicationController
  # GET /post110s
  # GET /post110s.xml
  def index
    @post110s = Post110.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post110s }
    end
  end

  # GET /post110s/1
  # GET /post110s/1.xml
  def show
    @post110 = Post110.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post110 }
    end
  end

  # GET /post110s/new
  # GET /post110s/new.xml
  def new
    @post110 = Post110.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post110 }
    end
  end

  # GET /post110s/1/edit
  def edit
    @post110 = Post110.find(params[:id])
  end

  # POST /post110s
  # POST /post110s.xml
  def create
    @post110 = Post110.new(params[:post110])

    respond_to do |format|
      if @post110.save
        format.html { redirect_to(@post110, :notice => 'Post110 was successfully created.') }
        format.xml  { render :xml => @post110, :status => :created, :location => @post110 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post110.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post110s/1
  # PUT /post110s/1.xml
  def update
    @post110 = Post110.find(params[:id])

    respond_to do |format|
      if @post110.update_attributes(params[:post110])
        format.html { redirect_to(@post110, :notice => 'Post110 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post110.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post110s/1
  # DELETE /post110s/1.xml
  def destroy
    @post110 = Post110.find(params[:id])
    @post110.destroy

    respond_to do |format|
      format.html { redirect_to(post110s_url) }
      format.xml  { head :ok }
    end
  end
end
