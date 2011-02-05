class Post277sController < ApplicationController
  # GET /post277s
  # GET /post277s.xml
  def index
    @post277s = Post277.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post277s }
    end
  end

  # GET /post277s/1
  # GET /post277s/1.xml
  def show
    @post277 = Post277.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post277 }
    end
  end

  # GET /post277s/new
  # GET /post277s/new.xml
  def new
    @post277 = Post277.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post277 }
    end
  end

  # GET /post277s/1/edit
  def edit
    @post277 = Post277.find(params[:id])
  end

  # POST /post277s
  # POST /post277s.xml
  def create
    @post277 = Post277.new(params[:post277])

    respond_to do |format|
      if @post277.save
        format.html { redirect_to(@post277, :notice => 'Post277 was successfully created.') }
        format.xml  { render :xml => @post277, :status => :created, :location => @post277 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post277.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post277s/1
  # PUT /post277s/1.xml
  def update
    @post277 = Post277.find(params[:id])

    respond_to do |format|
      if @post277.update_attributes(params[:post277])
        format.html { redirect_to(@post277, :notice => 'Post277 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post277.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post277s/1
  # DELETE /post277s/1.xml
  def destroy
    @post277 = Post277.find(params[:id])
    @post277.destroy

    respond_to do |format|
      format.html { redirect_to(post277s_url) }
      format.xml  { head :ok }
    end
  end
end
