class Post17sController < ApplicationController
  # GET /post17s
  # GET /post17s.xml
  def index
    @post17s = Post17.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post17s }
    end
  end

  # GET /post17s/1
  # GET /post17s/1.xml
  def show
    @post17 = Post17.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post17 }
    end
  end

  # GET /post17s/new
  # GET /post17s/new.xml
  def new
    @post17 = Post17.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post17 }
    end
  end

  # GET /post17s/1/edit
  def edit
    @post17 = Post17.find(params[:id])
  end

  # POST /post17s
  # POST /post17s.xml
  def create
    @post17 = Post17.new(params[:post17])

    respond_to do |format|
      if @post17.save
        format.html { redirect_to(@post17, :notice => 'Post17 was successfully created.') }
        format.xml  { render :xml => @post17, :status => :created, :location => @post17 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post17.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post17s/1
  # PUT /post17s/1.xml
  def update
    @post17 = Post17.find(params[:id])

    respond_to do |format|
      if @post17.update_attributes(params[:post17])
        format.html { redirect_to(@post17, :notice => 'Post17 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post17.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post17s/1
  # DELETE /post17s/1.xml
  def destroy
    @post17 = Post17.find(params[:id])
    @post17.destroy

    respond_to do |format|
      format.html { redirect_to(post17s_url) }
      format.xml  { head :ok }
    end
  end
end
