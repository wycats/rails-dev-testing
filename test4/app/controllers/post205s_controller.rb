class Post205sController < ApplicationController
  # GET /post205s
  # GET /post205s.xml
  def index
    @post205s = Post205.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post205s }
    end
  end

  # GET /post205s/1
  # GET /post205s/1.xml
  def show
    @post205 = Post205.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post205 }
    end
  end

  # GET /post205s/new
  # GET /post205s/new.xml
  def new
    @post205 = Post205.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post205 }
    end
  end

  # GET /post205s/1/edit
  def edit
    @post205 = Post205.find(params[:id])
  end

  # POST /post205s
  # POST /post205s.xml
  def create
    @post205 = Post205.new(params[:post205])

    respond_to do |format|
      if @post205.save
        format.html { redirect_to(@post205, :notice => 'Post205 was successfully created.') }
        format.xml  { render :xml => @post205, :status => :created, :location => @post205 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post205.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post205s/1
  # PUT /post205s/1.xml
  def update
    @post205 = Post205.find(params[:id])

    respond_to do |format|
      if @post205.update_attributes(params[:post205])
        format.html { redirect_to(@post205, :notice => 'Post205 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post205.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post205s/1
  # DELETE /post205s/1.xml
  def destroy
    @post205 = Post205.find(params[:id])
    @post205.destroy

    respond_to do |format|
      format.html { redirect_to(post205s_url) }
      format.xml  { head :ok }
    end
  end
end
