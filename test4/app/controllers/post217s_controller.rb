class Post217sController < ApplicationController
  # GET /post217s
  # GET /post217s.xml
  def index
    @post217s = Post217.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post217s }
    end
  end

  # GET /post217s/1
  # GET /post217s/1.xml
  def show
    @post217 = Post217.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post217 }
    end
  end

  # GET /post217s/new
  # GET /post217s/new.xml
  def new
    @post217 = Post217.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post217 }
    end
  end

  # GET /post217s/1/edit
  def edit
    @post217 = Post217.find(params[:id])
  end

  # POST /post217s
  # POST /post217s.xml
  def create
    @post217 = Post217.new(params[:post217])

    respond_to do |format|
      if @post217.save
        format.html { redirect_to(@post217, :notice => 'Post217 was successfully created.') }
        format.xml  { render :xml => @post217, :status => :created, :location => @post217 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post217.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post217s/1
  # PUT /post217s/1.xml
  def update
    @post217 = Post217.find(params[:id])

    respond_to do |format|
      if @post217.update_attributes(params[:post217])
        format.html { redirect_to(@post217, :notice => 'Post217 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post217.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post217s/1
  # DELETE /post217s/1.xml
  def destroy
    @post217 = Post217.find(params[:id])
    @post217.destroy

    respond_to do |format|
      format.html { redirect_to(post217s_url) }
      format.xml  { head :ok }
    end
  end
end
