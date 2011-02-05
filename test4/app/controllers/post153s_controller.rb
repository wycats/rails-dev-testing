class Post153sController < ApplicationController
  # GET /post153s
  # GET /post153s.xml
  def index
    @post153s = Post153.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post153s }
    end
  end

  # GET /post153s/1
  # GET /post153s/1.xml
  def show
    @post153 = Post153.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post153 }
    end
  end

  # GET /post153s/new
  # GET /post153s/new.xml
  def new
    @post153 = Post153.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post153 }
    end
  end

  # GET /post153s/1/edit
  def edit
    @post153 = Post153.find(params[:id])
  end

  # POST /post153s
  # POST /post153s.xml
  def create
    @post153 = Post153.new(params[:post153])

    respond_to do |format|
      if @post153.save
        format.html { redirect_to(@post153, :notice => 'Post153 was successfully created.') }
        format.xml  { render :xml => @post153, :status => :created, :location => @post153 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post153.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post153s/1
  # PUT /post153s/1.xml
  def update
    @post153 = Post153.find(params[:id])

    respond_to do |format|
      if @post153.update_attributes(params[:post153])
        format.html { redirect_to(@post153, :notice => 'Post153 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post153.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post153s/1
  # DELETE /post153s/1.xml
  def destroy
    @post153 = Post153.find(params[:id])
    @post153.destroy

    respond_to do |format|
      format.html { redirect_to(post153s_url) }
      format.xml  { head :ok }
    end
  end
end
