class Post290sController < ApplicationController
  # GET /post290s
  # GET /post290s.xml
  def index
    @post290s = Post290.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post290s }
    end
  end

  # GET /post290s/1
  # GET /post290s/1.xml
  def show
    @post290 = Post290.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post290 }
    end
  end

  # GET /post290s/new
  # GET /post290s/new.xml
  def new
    @post290 = Post290.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post290 }
    end
  end

  # GET /post290s/1/edit
  def edit
    @post290 = Post290.find(params[:id])
  end

  # POST /post290s
  # POST /post290s.xml
  def create
    @post290 = Post290.new(params[:post290])

    respond_to do |format|
      if @post290.save
        format.html { redirect_to(@post290, :notice => 'Post290 was successfully created.') }
        format.xml  { render :xml => @post290, :status => :created, :location => @post290 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post290.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post290s/1
  # PUT /post290s/1.xml
  def update
    @post290 = Post290.find(params[:id])

    respond_to do |format|
      if @post290.update_attributes(params[:post290])
        format.html { redirect_to(@post290, :notice => 'Post290 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post290.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post290s/1
  # DELETE /post290s/1.xml
  def destroy
    @post290 = Post290.find(params[:id])
    @post290.destroy

    respond_to do |format|
      format.html { redirect_to(post290s_url) }
      format.xml  { head :ok }
    end
  end
end
