class Post377sController < ApplicationController
  # GET /post377s
  # GET /post377s.xml
  def index
    @post377s = Post377.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post377s }
    end
  end

  # GET /post377s/1
  # GET /post377s/1.xml
  def show
    @post377 = Post377.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post377 }
    end
  end

  # GET /post377s/new
  # GET /post377s/new.xml
  def new
    @post377 = Post377.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post377 }
    end
  end

  # GET /post377s/1/edit
  def edit
    @post377 = Post377.find(params[:id])
  end

  # POST /post377s
  # POST /post377s.xml
  def create
    @post377 = Post377.new(params[:post377])

    respond_to do |format|
      if @post377.save
        format.html { redirect_to(@post377, :notice => 'Post377 was successfully created.') }
        format.xml  { render :xml => @post377, :status => :created, :location => @post377 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post377.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post377s/1
  # PUT /post377s/1.xml
  def update
    @post377 = Post377.find(params[:id])

    respond_to do |format|
      if @post377.update_attributes(params[:post377])
        format.html { redirect_to(@post377, :notice => 'Post377 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post377.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post377s/1
  # DELETE /post377s/1.xml
  def destroy
    @post377 = Post377.find(params[:id])
    @post377.destroy

    respond_to do |format|
      format.html { redirect_to(post377s_url) }
      format.xml  { head :ok }
    end
  end
end
