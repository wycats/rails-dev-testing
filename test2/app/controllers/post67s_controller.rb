class Post67sController < ApplicationController
  # GET /post67s
  # GET /post67s.xml
  def index
    @post67s = Post67.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post67s }
    end
  end

  # GET /post67s/1
  # GET /post67s/1.xml
  def show
    @post67 = Post67.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post67 }
    end
  end

  # GET /post67s/new
  # GET /post67s/new.xml
  def new
    @post67 = Post67.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post67 }
    end
  end

  # GET /post67s/1/edit
  def edit
    @post67 = Post67.find(params[:id])
  end

  # POST /post67s
  # POST /post67s.xml
  def create
    @post67 = Post67.new(params[:post67])

    respond_to do |format|
      if @post67.save
        format.html { redirect_to(@post67, :notice => 'Post67 was successfully created.') }
        format.xml  { render :xml => @post67, :status => :created, :location => @post67 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post67.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post67s/1
  # PUT /post67s/1.xml
  def update
    @post67 = Post67.find(params[:id])

    respond_to do |format|
      if @post67.update_attributes(params[:post67])
        format.html { redirect_to(@post67, :notice => 'Post67 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post67.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post67s/1
  # DELETE /post67s/1.xml
  def destroy
    @post67 = Post67.find(params[:id])
    @post67.destroy

    respond_to do |format|
      format.html { redirect_to(post67s_url) }
      format.xml  { head :ok }
    end
  end
end
