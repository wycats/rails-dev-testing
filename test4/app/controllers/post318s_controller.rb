class Post318sController < ApplicationController
  # GET /post318s
  # GET /post318s.xml
  def index
    @post318s = Post318.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post318s }
    end
  end

  # GET /post318s/1
  # GET /post318s/1.xml
  def show
    @post318 = Post318.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post318 }
    end
  end

  # GET /post318s/new
  # GET /post318s/new.xml
  def new
    @post318 = Post318.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post318 }
    end
  end

  # GET /post318s/1/edit
  def edit
    @post318 = Post318.find(params[:id])
  end

  # POST /post318s
  # POST /post318s.xml
  def create
    @post318 = Post318.new(params[:post318])

    respond_to do |format|
      if @post318.save
        format.html { redirect_to(@post318, :notice => 'Post318 was successfully created.') }
        format.xml  { render :xml => @post318, :status => :created, :location => @post318 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post318.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post318s/1
  # PUT /post318s/1.xml
  def update
    @post318 = Post318.find(params[:id])

    respond_to do |format|
      if @post318.update_attributes(params[:post318])
        format.html { redirect_to(@post318, :notice => 'Post318 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post318.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post318s/1
  # DELETE /post318s/1.xml
  def destroy
    @post318 = Post318.find(params[:id])
    @post318.destroy

    respond_to do |format|
      format.html { redirect_to(post318s_url) }
      format.xml  { head :ok }
    end
  end
end
