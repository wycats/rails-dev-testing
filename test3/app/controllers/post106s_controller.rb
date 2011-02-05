class Post106sController < ApplicationController
  # GET /post106s
  # GET /post106s.xml
  def index
    @post106s = Post106.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post106s }
    end
  end

  # GET /post106s/1
  # GET /post106s/1.xml
  def show
    @post106 = Post106.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post106 }
    end
  end

  # GET /post106s/new
  # GET /post106s/new.xml
  def new
    @post106 = Post106.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post106 }
    end
  end

  # GET /post106s/1/edit
  def edit
    @post106 = Post106.find(params[:id])
  end

  # POST /post106s
  # POST /post106s.xml
  def create
    @post106 = Post106.new(params[:post106])

    respond_to do |format|
      if @post106.save
        format.html { redirect_to(@post106, :notice => 'Post106 was successfully created.') }
        format.xml  { render :xml => @post106, :status => :created, :location => @post106 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post106.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post106s/1
  # PUT /post106s/1.xml
  def update
    @post106 = Post106.find(params[:id])

    respond_to do |format|
      if @post106.update_attributes(params[:post106])
        format.html { redirect_to(@post106, :notice => 'Post106 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post106.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post106s/1
  # DELETE /post106s/1.xml
  def destroy
    @post106 = Post106.find(params[:id])
    @post106.destroy

    respond_to do |format|
      format.html { redirect_to(post106s_url) }
      format.xml  { head :ok }
    end
  end
end
