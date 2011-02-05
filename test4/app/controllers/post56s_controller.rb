class Post56sController < ApplicationController
  # GET /post56s
  # GET /post56s.xml
  def index
    @post56s = Post56.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post56s }
    end
  end

  # GET /post56s/1
  # GET /post56s/1.xml
  def show
    @post56 = Post56.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post56 }
    end
  end

  # GET /post56s/new
  # GET /post56s/new.xml
  def new
    @post56 = Post56.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post56 }
    end
  end

  # GET /post56s/1/edit
  def edit
    @post56 = Post56.find(params[:id])
  end

  # POST /post56s
  # POST /post56s.xml
  def create
    @post56 = Post56.new(params[:post56])

    respond_to do |format|
      if @post56.save
        format.html { redirect_to(@post56, :notice => 'Post56 was successfully created.') }
        format.xml  { render :xml => @post56, :status => :created, :location => @post56 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post56.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post56s/1
  # PUT /post56s/1.xml
  def update
    @post56 = Post56.find(params[:id])

    respond_to do |format|
      if @post56.update_attributes(params[:post56])
        format.html { redirect_to(@post56, :notice => 'Post56 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post56.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post56s/1
  # DELETE /post56s/1.xml
  def destroy
    @post56 = Post56.find(params[:id])
    @post56.destroy

    respond_to do |format|
      format.html { redirect_to(post56s_url) }
      format.xml  { head :ok }
    end
  end
end
