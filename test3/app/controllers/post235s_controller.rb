class Post235sController < ApplicationController
  # GET /post235s
  # GET /post235s.xml
  def index
    @post235s = Post235.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post235s }
    end
  end

  # GET /post235s/1
  # GET /post235s/1.xml
  def show
    @post235 = Post235.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post235 }
    end
  end

  # GET /post235s/new
  # GET /post235s/new.xml
  def new
    @post235 = Post235.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post235 }
    end
  end

  # GET /post235s/1/edit
  def edit
    @post235 = Post235.find(params[:id])
  end

  # POST /post235s
  # POST /post235s.xml
  def create
    @post235 = Post235.new(params[:post235])

    respond_to do |format|
      if @post235.save
        format.html { redirect_to(@post235, :notice => 'Post235 was successfully created.') }
        format.xml  { render :xml => @post235, :status => :created, :location => @post235 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post235.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post235s/1
  # PUT /post235s/1.xml
  def update
    @post235 = Post235.find(params[:id])

    respond_to do |format|
      if @post235.update_attributes(params[:post235])
        format.html { redirect_to(@post235, :notice => 'Post235 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post235.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post235s/1
  # DELETE /post235s/1.xml
  def destroy
    @post235 = Post235.find(params[:id])
    @post235.destroy

    respond_to do |format|
      format.html { redirect_to(post235s_url) }
      format.xml  { head :ok }
    end
  end
end
