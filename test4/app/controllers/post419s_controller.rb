class Post419sController < ApplicationController
  # GET /post419s
  # GET /post419s.xml
  def index
    @post419s = Post419.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post419s }
    end
  end

  # GET /post419s/1
  # GET /post419s/1.xml
  def show
    @post419 = Post419.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post419 }
    end
  end

  # GET /post419s/new
  # GET /post419s/new.xml
  def new
    @post419 = Post419.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post419 }
    end
  end

  # GET /post419s/1/edit
  def edit
    @post419 = Post419.find(params[:id])
  end

  # POST /post419s
  # POST /post419s.xml
  def create
    @post419 = Post419.new(params[:post419])

    respond_to do |format|
      if @post419.save
        format.html { redirect_to(@post419, :notice => 'Post419 was successfully created.') }
        format.xml  { render :xml => @post419, :status => :created, :location => @post419 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post419.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post419s/1
  # PUT /post419s/1.xml
  def update
    @post419 = Post419.find(params[:id])

    respond_to do |format|
      if @post419.update_attributes(params[:post419])
        format.html { redirect_to(@post419, :notice => 'Post419 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post419.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post419s/1
  # DELETE /post419s/1.xml
  def destroy
    @post419 = Post419.find(params[:id])
    @post419.destroy

    respond_to do |format|
      format.html { redirect_to(post419s_url) }
      format.xml  { head :ok }
    end
  end
end
