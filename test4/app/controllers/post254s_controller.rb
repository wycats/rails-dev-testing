class Post254sController < ApplicationController
  # GET /post254s
  # GET /post254s.xml
  def index
    @post254s = Post254.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post254s }
    end
  end

  # GET /post254s/1
  # GET /post254s/1.xml
  def show
    @post254 = Post254.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post254 }
    end
  end

  # GET /post254s/new
  # GET /post254s/new.xml
  def new
    @post254 = Post254.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post254 }
    end
  end

  # GET /post254s/1/edit
  def edit
    @post254 = Post254.find(params[:id])
  end

  # POST /post254s
  # POST /post254s.xml
  def create
    @post254 = Post254.new(params[:post254])

    respond_to do |format|
      if @post254.save
        format.html { redirect_to(@post254, :notice => 'Post254 was successfully created.') }
        format.xml  { render :xml => @post254, :status => :created, :location => @post254 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post254.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post254s/1
  # PUT /post254s/1.xml
  def update
    @post254 = Post254.find(params[:id])

    respond_to do |format|
      if @post254.update_attributes(params[:post254])
        format.html { redirect_to(@post254, :notice => 'Post254 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post254.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post254s/1
  # DELETE /post254s/1.xml
  def destroy
    @post254 = Post254.find(params[:id])
    @post254.destroy

    respond_to do |format|
      format.html { redirect_to(post254s_url) }
      format.xml  { head :ok }
    end
  end
end
