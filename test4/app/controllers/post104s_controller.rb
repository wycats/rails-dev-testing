class Post104sController < ApplicationController
  # GET /post104s
  # GET /post104s.xml
  def index
    @post104s = Post104.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post104s }
    end
  end

  # GET /post104s/1
  # GET /post104s/1.xml
  def show
    @post104 = Post104.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post104 }
    end
  end

  # GET /post104s/new
  # GET /post104s/new.xml
  def new
    @post104 = Post104.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post104 }
    end
  end

  # GET /post104s/1/edit
  def edit
    @post104 = Post104.find(params[:id])
  end

  # POST /post104s
  # POST /post104s.xml
  def create
    @post104 = Post104.new(params[:post104])

    respond_to do |format|
      if @post104.save
        format.html { redirect_to(@post104, :notice => 'Post104 was successfully created.') }
        format.xml  { render :xml => @post104, :status => :created, :location => @post104 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post104.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post104s/1
  # PUT /post104s/1.xml
  def update
    @post104 = Post104.find(params[:id])

    respond_to do |format|
      if @post104.update_attributes(params[:post104])
        format.html { redirect_to(@post104, :notice => 'Post104 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post104.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post104s/1
  # DELETE /post104s/1.xml
  def destroy
    @post104 = Post104.find(params[:id])
    @post104.destroy

    respond_to do |format|
      format.html { redirect_to(post104s_url) }
      format.xml  { head :ok }
    end
  end
end
