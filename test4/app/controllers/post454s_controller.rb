class Post454sController < ApplicationController
  # GET /post454s
  # GET /post454s.xml
  def index
    @post454s = Post454.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post454s }
    end
  end

  # GET /post454s/1
  # GET /post454s/1.xml
  def show
    @post454 = Post454.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post454 }
    end
  end

  # GET /post454s/new
  # GET /post454s/new.xml
  def new
    @post454 = Post454.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post454 }
    end
  end

  # GET /post454s/1/edit
  def edit
    @post454 = Post454.find(params[:id])
  end

  # POST /post454s
  # POST /post454s.xml
  def create
    @post454 = Post454.new(params[:post454])

    respond_to do |format|
      if @post454.save
        format.html { redirect_to(@post454, :notice => 'Post454 was successfully created.') }
        format.xml  { render :xml => @post454, :status => :created, :location => @post454 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post454.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post454s/1
  # PUT /post454s/1.xml
  def update
    @post454 = Post454.find(params[:id])

    respond_to do |format|
      if @post454.update_attributes(params[:post454])
        format.html { redirect_to(@post454, :notice => 'Post454 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post454.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post454s/1
  # DELETE /post454s/1.xml
  def destroy
    @post454 = Post454.find(params[:id])
    @post454.destroy

    respond_to do |format|
      format.html { redirect_to(post454s_url) }
      format.xml  { head :ok }
    end
  end
end
