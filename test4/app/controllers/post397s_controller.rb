class Post397sController < ApplicationController
  # GET /post397s
  # GET /post397s.xml
  def index
    @post397s = Post397.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post397s }
    end
  end

  # GET /post397s/1
  # GET /post397s/1.xml
  def show
    @post397 = Post397.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post397 }
    end
  end

  # GET /post397s/new
  # GET /post397s/new.xml
  def new
    @post397 = Post397.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post397 }
    end
  end

  # GET /post397s/1/edit
  def edit
    @post397 = Post397.find(params[:id])
  end

  # POST /post397s
  # POST /post397s.xml
  def create
    @post397 = Post397.new(params[:post397])

    respond_to do |format|
      if @post397.save
        format.html { redirect_to(@post397, :notice => 'Post397 was successfully created.') }
        format.xml  { render :xml => @post397, :status => :created, :location => @post397 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post397.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post397s/1
  # PUT /post397s/1.xml
  def update
    @post397 = Post397.find(params[:id])

    respond_to do |format|
      if @post397.update_attributes(params[:post397])
        format.html { redirect_to(@post397, :notice => 'Post397 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post397.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post397s/1
  # DELETE /post397s/1.xml
  def destroy
    @post397 = Post397.find(params[:id])
    @post397.destroy

    respond_to do |format|
      format.html { redirect_to(post397s_url) }
      format.xml  { head :ok }
    end
  end
end
