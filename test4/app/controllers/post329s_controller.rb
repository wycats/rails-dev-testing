class Post329sController < ApplicationController
  # GET /post329s
  # GET /post329s.xml
  def index
    @post329s = Post329.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post329s }
    end
  end

  # GET /post329s/1
  # GET /post329s/1.xml
  def show
    @post329 = Post329.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post329 }
    end
  end

  # GET /post329s/new
  # GET /post329s/new.xml
  def new
    @post329 = Post329.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post329 }
    end
  end

  # GET /post329s/1/edit
  def edit
    @post329 = Post329.find(params[:id])
  end

  # POST /post329s
  # POST /post329s.xml
  def create
    @post329 = Post329.new(params[:post329])

    respond_to do |format|
      if @post329.save
        format.html { redirect_to(@post329, :notice => 'Post329 was successfully created.') }
        format.xml  { render :xml => @post329, :status => :created, :location => @post329 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post329.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post329s/1
  # PUT /post329s/1.xml
  def update
    @post329 = Post329.find(params[:id])

    respond_to do |format|
      if @post329.update_attributes(params[:post329])
        format.html { redirect_to(@post329, :notice => 'Post329 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post329.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post329s/1
  # DELETE /post329s/1.xml
  def destroy
    @post329 = Post329.find(params[:id])
    @post329.destroy

    respond_to do |format|
      format.html { redirect_to(post329s_url) }
      format.xml  { head :ok }
    end
  end
end
