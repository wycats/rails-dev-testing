class Post364sController < ApplicationController
  # GET /post364s
  # GET /post364s.xml
  def index
    @post364s = Post364.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post364s }
    end
  end

  # GET /post364s/1
  # GET /post364s/1.xml
  def show
    @post364 = Post364.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post364 }
    end
  end

  # GET /post364s/new
  # GET /post364s/new.xml
  def new
    @post364 = Post364.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post364 }
    end
  end

  # GET /post364s/1/edit
  def edit
    @post364 = Post364.find(params[:id])
  end

  # POST /post364s
  # POST /post364s.xml
  def create
    @post364 = Post364.new(params[:post364])

    respond_to do |format|
      if @post364.save
        format.html { redirect_to(@post364, :notice => 'Post364 was successfully created.') }
        format.xml  { render :xml => @post364, :status => :created, :location => @post364 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post364.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post364s/1
  # PUT /post364s/1.xml
  def update
    @post364 = Post364.find(params[:id])

    respond_to do |format|
      if @post364.update_attributes(params[:post364])
        format.html { redirect_to(@post364, :notice => 'Post364 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post364.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post364s/1
  # DELETE /post364s/1.xml
  def destroy
    @post364 = Post364.find(params[:id])
    @post364.destroy

    respond_to do |format|
      format.html { redirect_to(post364s_url) }
      format.xml  { head :ok }
    end
  end
end
