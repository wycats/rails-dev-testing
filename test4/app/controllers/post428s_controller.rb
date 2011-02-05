class Post428sController < ApplicationController
  # GET /post428s
  # GET /post428s.xml
  def index
    @post428s = Post428.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post428s }
    end
  end

  # GET /post428s/1
  # GET /post428s/1.xml
  def show
    @post428 = Post428.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post428 }
    end
  end

  # GET /post428s/new
  # GET /post428s/new.xml
  def new
    @post428 = Post428.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post428 }
    end
  end

  # GET /post428s/1/edit
  def edit
    @post428 = Post428.find(params[:id])
  end

  # POST /post428s
  # POST /post428s.xml
  def create
    @post428 = Post428.new(params[:post428])

    respond_to do |format|
      if @post428.save
        format.html { redirect_to(@post428, :notice => 'Post428 was successfully created.') }
        format.xml  { render :xml => @post428, :status => :created, :location => @post428 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post428.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post428s/1
  # PUT /post428s/1.xml
  def update
    @post428 = Post428.find(params[:id])

    respond_to do |format|
      if @post428.update_attributes(params[:post428])
        format.html { redirect_to(@post428, :notice => 'Post428 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post428.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post428s/1
  # DELETE /post428s/1.xml
  def destroy
    @post428 = Post428.find(params[:id])
    @post428.destroy

    respond_to do |format|
      format.html { redirect_to(post428s_url) }
      format.xml  { head :ok }
    end
  end
end
