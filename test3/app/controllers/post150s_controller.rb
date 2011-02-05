class Post150sController < ApplicationController
  # GET /post150s
  # GET /post150s.xml
  def index
    @post150s = Post150.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post150s }
    end
  end

  # GET /post150s/1
  # GET /post150s/1.xml
  def show
    @post150 = Post150.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post150 }
    end
  end

  # GET /post150s/new
  # GET /post150s/new.xml
  def new
    @post150 = Post150.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post150 }
    end
  end

  # GET /post150s/1/edit
  def edit
    @post150 = Post150.find(params[:id])
  end

  # POST /post150s
  # POST /post150s.xml
  def create
    @post150 = Post150.new(params[:post150])

    respond_to do |format|
      if @post150.save
        format.html { redirect_to(@post150, :notice => 'Post150 was successfully created.') }
        format.xml  { render :xml => @post150, :status => :created, :location => @post150 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post150.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post150s/1
  # PUT /post150s/1.xml
  def update
    @post150 = Post150.find(params[:id])

    respond_to do |format|
      if @post150.update_attributes(params[:post150])
        format.html { redirect_to(@post150, :notice => 'Post150 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post150.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post150s/1
  # DELETE /post150s/1.xml
  def destroy
    @post150 = Post150.find(params[:id])
    @post150.destroy

    respond_to do |format|
      format.html { redirect_to(post150s_url) }
      format.xml  { head :ok }
    end
  end
end
