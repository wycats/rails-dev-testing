class Post418sController < ApplicationController
  # GET /post418s
  # GET /post418s.xml
  def index
    @post418s = Post418.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post418s }
    end
  end

  # GET /post418s/1
  # GET /post418s/1.xml
  def show
    @post418 = Post418.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post418 }
    end
  end

  # GET /post418s/new
  # GET /post418s/new.xml
  def new
    @post418 = Post418.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post418 }
    end
  end

  # GET /post418s/1/edit
  def edit
    @post418 = Post418.find(params[:id])
  end

  # POST /post418s
  # POST /post418s.xml
  def create
    @post418 = Post418.new(params[:post418])

    respond_to do |format|
      if @post418.save
        format.html { redirect_to(@post418, :notice => 'Post418 was successfully created.') }
        format.xml  { render :xml => @post418, :status => :created, :location => @post418 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post418.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post418s/1
  # PUT /post418s/1.xml
  def update
    @post418 = Post418.find(params[:id])

    respond_to do |format|
      if @post418.update_attributes(params[:post418])
        format.html { redirect_to(@post418, :notice => 'Post418 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post418.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post418s/1
  # DELETE /post418s/1.xml
  def destroy
    @post418 = Post418.find(params[:id])
    @post418.destroy

    respond_to do |format|
      format.html { redirect_to(post418s_url) }
      format.xml  { head :ok }
    end
  end
end
