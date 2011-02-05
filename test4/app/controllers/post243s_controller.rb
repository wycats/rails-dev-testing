class Post243sController < ApplicationController
  # GET /post243s
  # GET /post243s.xml
  def index
    @post243s = Post243.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post243s }
    end
  end

  # GET /post243s/1
  # GET /post243s/1.xml
  def show
    @post243 = Post243.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post243 }
    end
  end

  # GET /post243s/new
  # GET /post243s/new.xml
  def new
    @post243 = Post243.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post243 }
    end
  end

  # GET /post243s/1/edit
  def edit
    @post243 = Post243.find(params[:id])
  end

  # POST /post243s
  # POST /post243s.xml
  def create
    @post243 = Post243.new(params[:post243])

    respond_to do |format|
      if @post243.save
        format.html { redirect_to(@post243, :notice => 'Post243 was successfully created.') }
        format.xml  { render :xml => @post243, :status => :created, :location => @post243 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post243.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post243s/1
  # PUT /post243s/1.xml
  def update
    @post243 = Post243.find(params[:id])

    respond_to do |format|
      if @post243.update_attributes(params[:post243])
        format.html { redirect_to(@post243, :notice => 'Post243 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post243.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post243s/1
  # DELETE /post243s/1.xml
  def destroy
    @post243 = Post243.find(params[:id])
    @post243.destroy

    respond_to do |format|
      format.html { redirect_to(post243s_url) }
      format.xml  { head :ok }
    end
  end
end
