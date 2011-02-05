class Post77sController < ApplicationController
  # GET /post77s
  # GET /post77s.xml
  def index
    @post77s = Post77.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post77s }
    end
  end

  # GET /post77s/1
  # GET /post77s/1.xml
  def show
    @post77 = Post77.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post77 }
    end
  end

  # GET /post77s/new
  # GET /post77s/new.xml
  def new
    @post77 = Post77.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post77 }
    end
  end

  # GET /post77s/1/edit
  def edit
    @post77 = Post77.find(params[:id])
  end

  # POST /post77s
  # POST /post77s.xml
  def create
    @post77 = Post77.new(params[:post77])

    respond_to do |format|
      if @post77.save
        format.html { redirect_to(@post77, :notice => 'Post77 was successfully created.') }
        format.xml  { render :xml => @post77, :status => :created, :location => @post77 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post77.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post77s/1
  # PUT /post77s/1.xml
  def update
    @post77 = Post77.find(params[:id])

    respond_to do |format|
      if @post77.update_attributes(params[:post77])
        format.html { redirect_to(@post77, :notice => 'Post77 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post77.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post77s/1
  # DELETE /post77s/1.xml
  def destroy
    @post77 = Post77.find(params[:id])
    @post77.destroy

    respond_to do |format|
      format.html { redirect_to(post77s_url) }
      format.xml  { head :ok }
    end
  end
end
