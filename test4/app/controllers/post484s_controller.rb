class Post484sController < ApplicationController
  # GET /post484s
  # GET /post484s.xml
  def index
    @post484s = Post484.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post484s }
    end
  end

  # GET /post484s/1
  # GET /post484s/1.xml
  def show
    @post484 = Post484.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post484 }
    end
  end

  # GET /post484s/new
  # GET /post484s/new.xml
  def new
    @post484 = Post484.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post484 }
    end
  end

  # GET /post484s/1/edit
  def edit
    @post484 = Post484.find(params[:id])
  end

  # POST /post484s
  # POST /post484s.xml
  def create
    @post484 = Post484.new(params[:post484])

    respond_to do |format|
      if @post484.save
        format.html { redirect_to(@post484, :notice => 'Post484 was successfully created.') }
        format.xml  { render :xml => @post484, :status => :created, :location => @post484 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post484.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post484s/1
  # PUT /post484s/1.xml
  def update
    @post484 = Post484.find(params[:id])

    respond_to do |format|
      if @post484.update_attributes(params[:post484])
        format.html { redirect_to(@post484, :notice => 'Post484 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post484.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post484s/1
  # DELETE /post484s/1.xml
  def destroy
    @post484 = Post484.find(params[:id])
    @post484.destroy

    respond_to do |format|
      format.html { redirect_to(post484s_url) }
      format.xml  { head :ok }
    end
  end
end
