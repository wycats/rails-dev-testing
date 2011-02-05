class Post343sController < ApplicationController
  # GET /post343s
  # GET /post343s.xml
  def index
    @post343s = Post343.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post343s }
    end
  end

  # GET /post343s/1
  # GET /post343s/1.xml
  def show
    @post343 = Post343.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post343 }
    end
  end

  # GET /post343s/new
  # GET /post343s/new.xml
  def new
    @post343 = Post343.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post343 }
    end
  end

  # GET /post343s/1/edit
  def edit
    @post343 = Post343.find(params[:id])
  end

  # POST /post343s
  # POST /post343s.xml
  def create
    @post343 = Post343.new(params[:post343])

    respond_to do |format|
      if @post343.save
        format.html { redirect_to(@post343, :notice => 'Post343 was successfully created.') }
        format.xml  { render :xml => @post343, :status => :created, :location => @post343 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post343.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post343s/1
  # PUT /post343s/1.xml
  def update
    @post343 = Post343.find(params[:id])

    respond_to do |format|
      if @post343.update_attributes(params[:post343])
        format.html { redirect_to(@post343, :notice => 'Post343 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post343.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post343s/1
  # DELETE /post343s/1.xml
  def destroy
    @post343 = Post343.find(params[:id])
    @post343.destroy

    respond_to do |format|
      format.html { redirect_to(post343s_url) }
      format.xml  { head :ok }
    end
  end
end
