class Post215sController < ApplicationController
  # GET /post215s
  # GET /post215s.xml
  def index
    @post215s = Post215.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post215s }
    end
  end

  # GET /post215s/1
  # GET /post215s/1.xml
  def show
    @post215 = Post215.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post215 }
    end
  end

  # GET /post215s/new
  # GET /post215s/new.xml
  def new
    @post215 = Post215.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post215 }
    end
  end

  # GET /post215s/1/edit
  def edit
    @post215 = Post215.find(params[:id])
  end

  # POST /post215s
  # POST /post215s.xml
  def create
    @post215 = Post215.new(params[:post215])

    respond_to do |format|
      if @post215.save
        format.html { redirect_to(@post215, :notice => 'Post215 was successfully created.') }
        format.xml  { render :xml => @post215, :status => :created, :location => @post215 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post215.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post215s/1
  # PUT /post215s/1.xml
  def update
    @post215 = Post215.find(params[:id])

    respond_to do |format|
      if @post215.update_attributes(params[:post215])
        format.html { redirect_to(@post215, :notice => 'Post215 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post215.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post215s/1
  # DELETE /post215s/1.xml
  def destroy
    @post215 = Post215.find(params[:id])
    @post215.destroy

    respond_to do |format|
      format.html { redirect_to(post215s_url) }
      format.xml  { head :ok }
    end
  end
end
