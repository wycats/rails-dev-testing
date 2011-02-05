class Post78sController < ApplicationController
  # GET /post78s
  # GET /post78s.xml
  def index
    @post78s = Post78.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post78s }
    end
  end

  # GET /post78s/1
  # GET /post78s/1.xml
  def show
    @post78 = Post78.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post78 }
    end
  end

  # GET /post78s/new
  # GET /post78s/new.xml
  def new
    @post78 = Post78.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post78 }
    end
  end

  # GET /post78s/1/edit
  def edit
    @post78 = Post78.find(params[:id])
  end

  # POST /post78s
  # POST /post78s.xml
  def create
    @post78 = Post78.new(params[:post78])

    respond_to do |format|
      if @post78.save
        format.html { redirect_to(@post78, :notice => 'Post78 was successfully created.') }
        format.xml  { render :xml => @post78, :status => :created, :location => @post78 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post78.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post78s/1
  # PUT /post78s/1.xml
  def update
    @post78 = Post78.find(params[:id])

    respond_to do |format|
      if @post78.update_attributes(params[:post78])
        format.html { redirect_to(@post78, :notice => 'Post78 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post78.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post78s/1
  # DELETE /post78s/1.xml
  def destroy
    @post78 = Post78.find(params[:id])
    @post78.destroy

    respond_to do |format|
      format.html { redirect_to(post78s_url) }
      format.xml  { head :ok }
    end
  end
end
