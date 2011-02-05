class Post40sController < ApplicationController
  # GET /post40s
  # GET /post40s.xml
  def index
    @post40s = Post40.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post40s }
    end
  end

  # GET /post40s/1
  # GET /post40s/1.xml
  def show
    @post40 = Post40.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post40 }
    end
  end

  # GET /post40s/new
  # GET /post40s/new.xml
  def new
    @post40 = Post40.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post40 }
    end
  end

  # GET /post40s/1/edit
  def edit
    @post40 = Post40.find(params[:id])
  end

  # POST /post40s
  # POST /post40s.xml
  def create
    @post40 = Post40.new(params[:post40])

    respond_to do |format|
      if @post40.save
        format.html { redirect_to(@post40, :notice => 'Post40 was successfully created.') }
        format.xml  { render :xml => @post40, :status => :created, :location => @post40 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post40.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post40s/1
  # PUT /post40s/1.xml
  def update
    @post40 = Post40.find(params[:id])

    respond_to do |format|
      if @post40.update_attributes(params[:post40])
        format.html { redirect_to(@post40, :notice => 'Post40 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post40.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post40s/1
  # DELETE /post40s/1.xml
  def destroy
    @post40 = Post40.find(params[:id])
    @post40.destroy

    respond_to do |format|
      format.html { redirect_to(post40s_url) }
      format.xml  { head :ok }
    end
  end
end
