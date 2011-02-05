class Post387sController < ApplicationController
  # GET /post387s
  # GET /post387s.xml
  def index
    @post387s = Post387.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post387s }
    end
  end

  # GET /post387s/1
  # GET /post387s/1.xml
  def show
    @post387 = Post387.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post387 }
    end
  end

  # GET /post387s/new
  # GET /post387s/new.xml
  def new
    @post387 = Post387.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post387 }
    end
  end

  # GET /post387s/1/edit
  def edit
    @post387 = Post387.find(params[:id])
  end

  # POST /post387s
  # POST /post387s.xml
  def create
    @post387 = Post387.new(params[:post387])

    respond_to do |format|
      if @post387.save
        format.html { redirect_to(@post387, :notice => 'Post387 was successfully created.') }
        format.xml  { render :xml => @post387, :status => :created, :location => @post387 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post387.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post387s/1
  # PUT /post387s/1.xml
  def update
    @post387 = Post387.find(params[:id])

    respond_to do |format|
      if @post387.update_attributes(params[:post387])
        format.html { redirect_to(@post387, :notice => 'Post387 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post387.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post387s/1
  # DELETE /post387s/1.xml
  def destroy
    @post387 = Post387.find(params[:id])
    @post387.destroy

    respond_to do |format|
      format.html { redirect_to(post387s_url) }
      format.xml  { head :ok }
    end
  end
end
