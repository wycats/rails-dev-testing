class Post271sController < ApplicationController
  # GET /post271s
  # GET /post271s.xml
  def index
    @post271s = Post271.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post271s }
    end
  end

  # GET /post271s/1
  # GET /post271s/1.xml
  def show
    @post271 = Post271.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post271 }
    end
  end

  # GET /post271s/new
  # GET /post271s/new.xml
  def new
    @post271 = Post271.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post271 }
    end
  end

  # GET /post271s/1/edit
  def edit
    @post271 = Post271.find(params[:id])
  end

  # POST /post271s
  # POST /post271s.xml
  def create
    @post271 = Post271.new(params[:post271])

    respond_to do |format|
      if @post271.save
        format.html { redirect_to(@post271, :notice => 'Post271 was successfully created.') }
        format.xml  { render :xml => @post271, :status => :created, :location => @post271 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post271.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post271s/1
  # PUT /post271s/1.xml
  def update
    @post271 = Post271.find(params[:id])

    respond_to do |format|
      if @post271.update_attributes(params[:post271])
        format.html { redirect_to(@post271, :notice => 'Post271 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post271.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post271s/1
  # DELETE /post271s/1.xml
  def destroy
    @post271 = Post271.find(params[:id])
    @post271.destroy

    respond_to do |format|
      format.html { redirect_to(post271s_url) }
      format.xml  { head :ok }
    end
  end
end
