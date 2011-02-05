class Post491sController < ApplicationController
  # GET /post491s
  # GET /post491s.xml
  def index
    @post491s = Post491.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post491s }
    end
  end

  # GET /post491s/1
  # GET /post491s/1.xml
  def show
    @post491 = Post491.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post491 }
    end
  end

  # GET /post491s/new
  # GET /post491s/new.xml
  def new
    @post491 = Post491.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post491 }
    end
  end

  # GET /post491s/1/edit
  def edit
    @post491 = Post491.find(params[:id])
  end

  # POST /post491s
  # POST /post491s.xml
  def create
    @post491 = Post491.new(params[:post491])

    respond_to do |format|
      if @post491.save
        format.html { redirect_to(@post491, :notice => 'Post491 was successfully created.') }
        format.xml  { render :xml => @post491, :status => :created, :location => @post491 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post491.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post491s/1
  # PUT /post491s/1.xml
  def update
    @post491 = Post491.find(params[:id])

    respond_to do |format|
      if @post491.update_attributes(params[:post491])
        format.html { redirect_to(@post491, :notice => 'Post491 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post491.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post491s/1
  # DELETE /post491s/1.xml
  def destroy
    @post491 = Post491.find(params[:id])
    @post491.destroy

    respond_to do |format|
      format.html { redirect_to(post491s_url) }
      format.xml  { head :ok }
    end
  end
end
