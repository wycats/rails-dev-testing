class Post361sController < ApplicationController
  # GET /post361s
  # GET /post361s.xml
  def index
    @post361s = Post361.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post361s }
    end
  end

  # GET /post361s/1
  # GET /post361s/1.xml
  def show
    @post361 = Post361.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post361 }
    end
  end

  # GET /post361s/new
  # GET /post361s/new.xml
  def new
    @post361 = Post361.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post361 }
    end
  end

  # GET /post361s/1/edit
  def edit
    @post361 = Post361.find(params[:id])
  end

  # POST /post361s
  # POST /post361s.xml
  def create
    @post361 = Post361.new(params[:post361])

    respond_to do |format|
      if @post361.save
        format.html { redirect_to(@post361, :notice => 'Post361 was successfully created.') }
        format.xml  { render :xml => @post361, :status => :created, :location => @post361 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post361.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post361s/1
  # PUT /post361s/1.xml
  def update
    @post361 = Post361.find(params[:id])

    respond_to do |format|
      if @post361.update_attributes(params[:post361])
        format.html { redirect_to(@post361, :notice => 'Post361 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post361.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post361s/1
  # DELETE /post361s/1.xml
  def destroy
    @post361 = Post361.find(params[:id])
    @post361.destroy

    respond_to do |format|
      format.html { redirect_to(post361s_url) }
      format.xml  { head :ok }
    end
  end
end
