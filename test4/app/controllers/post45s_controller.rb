class Post45sController < ApplicationController
  # GET /post45s
  # GET /post45s.xml
  def index
    @post45s = Post45.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post45s }
    end
  end

  # GET /post45s/1
  # GET /post45s/1.xml
  def show
    @post45 = Post45.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post45 }
    end
  end

  # GET /post45s/new
  # GET /post45s/new.xml
  def new
    @post45 = Post45.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post45 }
    end
  end

  # GET /post45s/1/edit
  def edit
    @post45 = Post45.find(params[:id])
  end

  # POST /post45s
  # POST /post45s.xml
  def create
    @post45 = Post45.new(params[:post45])

    respond_to do |format|
      if @post45.save
        format.html { redirect_to(@post45, :notice => 'Post45 was successfully created.') }
        format.xml  { render :xml => @post45, :status => :created, :location => @post45 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post45.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post45s/1
  # PUT /post45s/1.xml
  def update
    @post45 = Post45.find(params[:id])

    respond_to do |format|
      if @post45.update_attributes(params[:post45])
        format.html { redirect_to(@post45, :notice => 'Post45 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post45.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post45s/1
  # DELETE /post45s/1.xml
  def destroy
    @post45 = Post45.find(params[:id])
    @post45.destroy

    respond_to do |format|
      format.html { redirect_to(post45s_url) }
      format.xml  { head :ok }
    end
  end
end
