class Post18sController < ApplicationController
  # GET /post18s
  # GET /post18s.xml
  def index
    @post18s = Post18.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post18s }
    end
  end

  # GET /post18s/1
  # GET /post18s/1.xml
  def show
    @post18 = Post18.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post18 }
    end
  end

  # GET /post18s/new
  # GET /post18s/new.xml
  def new
    @post18 = Post18.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post18 }
    end
  end

  # GET /post18s/1/edit
  def edit
    @post18 = Post18.find(params[:id])
  end

  # POST /post18s
  # POST /post18s.xml
  def create
    @post18 = Post18.new(params[:post18])

    respond_to do |format|
      if @post18.save
        format.html { redirect_to(@post18, :notice => 'Post18 was successfully created.') }
        format.xml  { render :xml => @post18, :status => :created, :location => @post18 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post18.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post18s/1
  # PUT /post18s/1.xml
  def update
    @post18 = Post18.find(params[:id])

    respond_to do |format|
      if @post18.update_attributes(params[:post18])
        format.html { redirect_to(@post18, :notice => 'Post18 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post18.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post18s/1
  # DELETE /post18s/1.xml
  def destroy
    @post18 = Post18.find(params[:id])
    @post18.destroy

    respond_to do |format|
      format.html { redirect_to(post18s_url) }
      format.xml  { head :ok }
    end
  end
end
