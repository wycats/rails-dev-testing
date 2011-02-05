class Post93sController < ApplicationController
  # GET /post93s
  # GET /post93s.xml
  def index
    @post93s = Post93.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post93s }
    end
  end

  # GET /post93s/1
  # GET /post93s/1.xml
  def show
    @post93 = Post93.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post93 }
    end
  end

  # GET /post93s/new
  # GET /post93s/new.xml
  def new
    @post93 = Post93.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post93 }
    end
  end

  # GET /post93s/1/edit
  def edit
    @post93 = Post93.find(params[:id])
  end

  # POST /post93s
  # POST /post93s.xml
  def create
    @post93 = Post93.new(params[:post93])

    respond_to do |format|
      if @post93.save
        format.html { redirect_to(@post93, :notice => 'Post93 was successfully created.') }
        format.xml  { render :xml => @post93, :status => :created, :location => @post93 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post93.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post93s/1
  # PUT /post93s/1.xml
  def update
    @post93 = Post93.find(params[:id])

    respond_to do |format|
      if @post93.update_attributes(params[:post93])
        format.html { redirect_to(@post93, :notice => 'Post93 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post93.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post93s/1
  # DELETE /post93s/1.xml
  def destroy
    @post93 = Post93.find(params[:id])
    @post93.destroy

    respond_to do |format|
      format.html { redirect_to(post93s_url) }
      format.xml  { head :ok }
    end
  end
end
