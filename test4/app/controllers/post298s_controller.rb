class Post298sController < ApplicationController
  # GET /post298s
  # GET /post298s.xml
  def index
    @post298s = Post298.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post298s }
    end
  end

  # GET /post298s/1
  # GET /post298s/1.xml
  def show
    @post298 = Post298.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post298 }
    end
  end

  # GET /post298s/new
  # GET /post298s/new.xml
  def new
    @post298 = Post298.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post298 }
    end
  end

  # GET /post298s/1/edit
  def edit
    @post298 = Post298.find(params[:id])
  end

  # POST /post298s
  # POST /post298s.xml
  def create
    @post298 = Post298.new(params[:post298])

    respond_to do |format|
      if @post298.save
        format.html { redirect_to(@post298, :notice => 'Post298 was successfully created.') }
        format.xml  { render :xml => @post298, :status => :created, :location => @post298 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post298.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post298s/1
  # PUT /post298s/1.xml
  def update
    @post298 = Post298.find(params[:id])

    respond_to do |format|
      if @post298.update_attributes(params[:post298])
        format.html { redirect_to(@post298, :notice => 'Post298 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post298.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post298s/1
  # DELETE /post298s/1.xml
  def destroy
    @post298 = Post298.find(params[:id])
    @post298.destroy

    respond_to do |format|
      format.html { redirect_to(post298s_url) }
      format.xml  { head :ok }
    end
  end
end
