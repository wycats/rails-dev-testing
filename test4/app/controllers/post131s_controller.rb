class Post131sController < ApplicationController
  # GET /post131s
  # GET /post131s.xml
  def index
    @post131s = Post131.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post131s }
    end
  end

  # GET /post131s/1
  # GET /post131s/1.xml
  def show
    @post131 = Post131.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post131 }
    end
  end

  # GET /post131s/new
  # GET /post131s/new.xml
  def new
    @post131 = Post131.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post131 }
    end
  end

  # GET /post131s/1/edit
  def edit
    @post131 = Post131.find(params[:id])
  end

  # POST /post131s
  # POST /post131s.xml
  def create
    @post131 = Post131.new(params[:post131])

    respond_to do |format|
      if @post131.save
        format.html { redirect_to(@post131, :notice => 'Post131 was successfully created.') }
        format.xml  { render :xml => @post131, :status => :created, :location => @post131 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post131.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post131s/1
  # PUT /post131s/1.xml
  def update
    @post131 = Post131.find(params[:id])

    respond_to do |format|
      if @post131.update_attributes(params[:post131])
        format.html { redirect_to(@post131, :notice => 'Post131 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post131.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post131s/1
  # DELETE /post131s/1.xml
  def destroy
    @post131 = Post131.find(params[:id])
    @post131.destroy

    respond_to do |format|
      format.html { redirect_to(post131s_url) }
      format.xml  { head :ok }
    end
  end
end
