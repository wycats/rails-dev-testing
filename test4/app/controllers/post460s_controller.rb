class Post460sController < ApplicationController
  # GET /post460s
  # GET /post460s.xml
  def index
    @post460s = Post460.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post460s }
    end
  end

  # GET /post460s/1
  # GET /post460s/1.xml
  def show
    @post460 = Post460.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post460 }
    end
  end

  # GET /post460s/new
  # GET /post460s/new.xml
  def new
    @post460 = Post460.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post460 }
    end
  end

  # GET /post460s/1/edit
  def edit
    @post460 = Post460.find(params[:id])
  end

  # POST /post460s
  # POST /post460s.xml
  def create
    @post460 = Post460.new(params[:post460])

    respond_to do |format|
      if @post460.save
        format.html { redirect_to(@post460, :notice => 'Post460 was successfully created.') }
        format.xml  { render :xml => @post460, :status => :created, :location => @post460 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post460.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post460s/1
  # PUT /post460s/1.xml
  def update
    @post460 = Post460.find(params[:id])

    respond_to do |format|
      if @post460.update_attributes(params[:post460])
        format.html { redirect_to(@post460, :notice => 'Post460 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post460.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post460s/1
  # DELETE /post460s/1.xml
  def destroy
    @post460 = Post460.find(params[:id])
    @post460.destroy

    respond_to do |format|
      format.html { redirect_to(post460s_url) }
      format.xml  { head :ok }
    end
  end
end
