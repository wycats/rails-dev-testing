class Post390sController < ApplicationController
  # GET /post390s
  # GET /post390s.xml
  def index
    @post390s = Post390.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post390s }
    end
  end

  # GET /post390s/1
  # GET /post390s/1.xml
  def show
    @post390 = Post390.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post390 }
    end
  end

  # GET /post390s/new
  # GET /post390s/new.xml
  def new
    @post390 = Post390.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post390 }
    end
  end

  # GET /post390s/1/edit
  def edit
    @post390 = Post390.find(params[:id])
  end

  # POST /post390s
  # POST /post390s.xml
  def create
    @post390 = Post390.new(params[:post390])

    respond_to do |format|
      if @post390.save
        format.html { redirect_to(@post390, :notice => 'Post390 was successfully created.') }
        format.xml  { render :xml => @post390, :status => :created, :location => @post390 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post390.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post390s/1
  # PUT /post390s/1.xml
  def update
    @post390 = Post390.find(params[:id])

    respond_to do |format|
      if @post390.update_attributes(params[:post390])
        format.html { redirect_to(@post390, :notice => 'Post390 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post390.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post390s/1
  # DELETE /post390s/1.xml
  def destroy
    @post390 = Post390.find(params[:id])
    @post390.destroy

    respond_to do |format|
      format.html { redirect_to(post390s_url) }
      format.xml  { head :ok }
    end
  end
end
