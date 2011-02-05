class Post376sController < ApplicationController
  # GET /post376s
  # GET /post376s.xml
  def index
    @post376s = Post376.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post376s }
    end
  end

  # GET /post376s/1
  # GET /post376s/1.xml
  def show
    @post376 = Post376.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post376 }
    end
  end

  # GET /post376s/new
  # GET /post376s/new.xml
  def new
    @post376 = Post376.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post376 }
    end
  end

  # GET /post376s/1/edit
  def edit
    @post376 = Post376.find(params[:id])
  end

  # POST /post376s
  # POST /post376s.xml
  def create
    @post376 = Post376.new(params[:post376])

    respond_to do |format|
      if @post376.save
        format.html { redirect_to(@post376, :notice => 'Post376 was successfully created.') }
        format.xml  { render :xml => @post376, :status => :created, :location => @post376 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post376.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post376s/1
  # PUT /post376s/1.xml
  def update
    @post376 = Post376.find(params[:id])

    respond_to do |format|
      if @post376.update_attributes(params[:post376])
        format.html { redirect_to(@post376, :notice => 'Post376 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post376.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post376s/1
  # DELETE /post376s/1.xml
  def destroy
    @post376 = Post376.find(params[:id])
    @post376.destroy

    respond_to do |format|
      format.html { redirect_to(post376s_url) }
      format.xml  { head :ok }
    end
  end
end
