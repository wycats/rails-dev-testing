class Post493sController < ApplicationController
  # GET /post493s
  # GET /post493s.xml
  def index
    @post493s = Post493.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post493s }
    end
  end

  # GET /post493s/1
  # GET /post493s/1.xml
  def show
    @post493 = Post493.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post493 }
    end
  end

  # GET /post493s/new
  # GET /post493s/new.xml
  def new
    @post493 = Post493.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post493 }
    end
  end

  # GET /post493s/1/edit
  def edit
    @post493 = Post493.find(params[:id])
  end

  # POST /post493s
  # POST /post493s.xml
  def create
    @post493 = Post493.new(params[:post493])

    respond_to do |format|
      if @post493.save
        format.html { redirect_to(@post493, :notice => 'Post493 was successfully created.') }
        format.xml  { render :xml => @post493, :status => :created, :location => @post493 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post493.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post493s/1
  # PUT /post493s/1.xml
  def update
    @post493 = Post493.find(params[:id])

    respond_to do |format|
      if @post493.update_attributes(params[:post493])
        format.html { redirect_to(@post493, :notice => 'Post493 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post493.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post493s/1
  # DELETE /post493s/1.xml
  def destroy
    @post493 = Post493.find(params[:id])
    @post493.destroy

    respond_to do |format|
      format.html { redirect_to(post493s_url) }
      format.xml  { head :ok }
    end
  end
end
