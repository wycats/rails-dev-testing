class Post439sController < ApplicationController
  # GET /post439s
  # GET /post439s.xml
  def index
    @post439s = Post439.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post439s }
    end
  end

  # GET /post439s/1
  # GET /post439s/1.xml
  def show
    @post439 = Post439.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post439 }
    end
  end

  # GET /post439s/new
  # GET /post439s/new.xml
  def new
    @post439 = Post439.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post439 }
    end
  end

  # GET /post439s/1/edit
  def edit
    @post439 = Post439.find(params[:id])
  end

  # POST /post439s
  # POST /post439s.xml
  def create
    @post439 = Post439.new(params[:post439])

    respond_to do |format|
      if @post439.save
        format.html { redirect_to(@post439, :notice => 'Post439 was successfully created.') }
        format.xml  { render :xml => @post439, :status => :created, :location => @post439 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post439.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post439s/1
  # PUT /post439s/1.xml
  def update
    @post439 = Post439.find(params[:id])

    respond_to do |format|
      if @post439.update_attributes(params[:post439])
        format.html { redirect_to(@post439, :notice => 'Post439 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post439.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post439s/1
  # DELETE /post439s/1.xml
  def destroy
    @post439 = Post439.find(params[:id])
    @post439.destroy

    respond_to do |format|
      format.html { redirect_to(post439s_url) }
      format.xml  { head :ok }
    end
  end
end
