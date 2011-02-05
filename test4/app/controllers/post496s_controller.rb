class Post496sController < ApplicationController
  # GET /post496s
  # GET /post496s.xml
  def index
    @post496s = Post496.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post496s }
    end
  end

  # GET /post496s/1
  # GET /post496s/1.xml
  def show
    @post496 = Post496.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post496 }
    end
  end

  # GET /post496s/new
  # GET /post496s/new.xml
  def new
    @post496 = Post496.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post496 }
    end
  end

  # GET /post496s/1/edit
  def edit
    @post496 = Post496.find(params[:id])
  end

  # POST /post496s
  # POST /post496s.xml
  def create
    @post496 = Post496.new(params[:post496])

    respond_to do |format|
      if @post496.save
        format.html { redirect_to(@post496, :notice => 'Post496 was successfully created.') }
        format.xml  { render :xml => @post496, :status => :created, :location => @post496 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post496.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post496s/1
  # PUT /post496s/1.xml
  def update
    @post496 = Post496.find(params[:id])

    respond_to do |format|
      if @post496.update_attributes(params[:post496])
        format.html { redirect_to(@post496, :notice => 'Post496 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post496.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post496s/1
  # DELETE /post496s/1.xml
  def destroy
    @post496 = Post496.find(params[:id])
    @post496.destroy

    respond_to do |format|
      format.html { redirect_to(post496s_url) }
      format.xml  { head :ok }
    end
  end
end
