class Post272sController < ApplicationController
  # GET /post272s
  # GET /post272s.xml
  def index
    @post272s = Post272.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post272s }
    end
  end

  # GET /post272s/1
  # GET /post272s/1.xml
  def show
    @post272 = Post272.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post272 }
    end
  end

  # GET /post272s/new
  # GET /post272s/new.xml
  def new
    @post272 = Post272.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post272 }
    end
  end

  # GET /post272s/1/edit
  def edit
    @post272 = Post272.find(params[:id])
  end

  # POST /post272s
  # POST /post272s.xml
  def create
    @post272 = Post272.new(params[:post272])

    respond_to do |format|
      if @post272.save
        format.html { redirect_to(@post272, :notice => 'Post272 was successfully created.') }
        format.xml  { render :xml => @post272, :status => :created, :location => @post272 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post272.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post272s/1
  # PUT /post272s/1.xml
  def update
    @post272 = Post272.find(params[:id])

    respond_to do |format|
      if @post272.update_attributes(params[:post272])
        format.html { redirect_to(@post272, :notice => 'Post272 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post272.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post272s/1
  # DELETE /post272s/1.xml
  def destroy
    @post272 = Post272.find(params[:id])
    @post272.destroy

    respond_to do |format|
      format.html { redirect_to(post272s_url) }
      format.xml  { head :ok }
    end
  end
end
