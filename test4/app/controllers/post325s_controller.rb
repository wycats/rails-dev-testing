class Post325sController < ApplicationController
  # GET /post325s
  # GET /post325s.xml
  def index
    @post325s = Post325.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post325s }
    end
  end

  # GET /post325s/1
  # GET /post325s/1.xml
  def show
    @post325 = Post325.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post325 }
    end
  end

  # GET /post325s/new
  # GET /post325s/new.xml
  def new
    @post325 = Post325.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post325 }
    end
  end

  # GET /post325s/1/edit
  def edit
    @post325 = Post325.find(params[:id])
  end

  # POST /post325s
  # POST /post325s.xml
  def create
    @post325 = Post325.new(params[:post325])

    respond_to do |format|
      if @post325.save
        format.html { redirect_to(@post325, :notice => 'Post325 was successfully created.') }
        format.xml  { render :xml => @post325, :status => :created, :location => @post325 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post325.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post325s/1
  # PUT /post325s/1.xml
  def update
    @post325 = Post325.find(params[:id])

    respond_to do |format|
      if @post325.update_attributes(params[:post325])
        format.html { redirect_to(@post325, :notice => 'Post325 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post325.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post325s/1
  # DELETE /post325s/1.xml
  def destroy
    @post325 = Post325.find(params[:id])
    @post325.destroy

    respond_to do |format|
      format.html { redirect_to(post325s_url) }
      format.xml  { head :ok }
    end
  end
end
