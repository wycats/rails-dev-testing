class Post137sController < ApplicationController
  # GET /post137s
  # GET /post137s.xml
  def index
    @post137s = Post137.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post137s }
    end
  end

  # GET /post137s/1
  # GET /post137s/1.xml
  def show
    @post137 = Post137.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post137 }
    end
  end

  # GET /post137s/new
  # GET /post137s/new.xml
  def new
    @post137 = Post137.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post137 }
    end
  end

  # GET /post137s/1/edit
  def edit
    @post137 = Post137.find(params[:id])
  end

  # POST /post137s
  # POST /post137s.xml
  def create
    @post137 = Post137.new(params[:post137])

    respond_to do |format|
      if @post137.save
        format.html { redirect_to(@post137, :notice => 'Post137 was successfully created.') }
        format.xml  { render :xml => @post137, :status => :created, :location => @post137 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post137.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post137s/1
  # PUT /post137s/1.xml
  def update
    @post137 = Post137.find(params[:id])

    respond_to do |format|
      if @post137.update_attributes(params[:post137])
        format.html { redirect_to(@post137, :notice => 'Post137 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post137.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post137s/1
  # DELETE /post137s/1.xml
  def destroy
    @post137 = Post137.find(params[:id])
    @post137.destroy

    respond_to do |format|
      format.html { redirect_to(post137s_url) }
      format.xml  { head :ok }
    end
  end
end
