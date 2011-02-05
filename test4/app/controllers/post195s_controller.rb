class Post195sController < ApplicationController
  # GET /post195s
  # GET /post195s.xml
  def index
    @post195s = Post195.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post195s }
    end
  end

  # GET /post195s/1
  # GET /post195s/1.xml
  def show
    @post195 = Post195.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post195 }
    end
  end

  # GET /post195s/new
  # GET /post195s/new.xml
  def new
    @post195 = Post195.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post195 }
    end
  end

  # GET /post195s/1/edit
  def edit
    @post195 = Post195.find(params[:id])
  end

  # POST /post195s
  # POST /post195s.xml
  def create
    @post195 = Post195.new(params[:post195])

    respond_to do |format|
      if @post195.save
        format.html { redirect_to(@post195, :notice => 'Post195 was successfully created.') }
        format.xml  { render :xml => @post195, :status => :created, :location => @post195 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post195.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post195s/1
  # PUT /post195s/1.xml
  def update
    @post195 = Post195.find(params[:id])

    respond_to do |format|
      if @post195.update_attributes(params[:post195])
        format.html { redirect_to(@post195, :notice => 'Post195 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post195.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post195s/1
  # DELETE /post195s/1.xml
  def destroy
    @post195 = Post195.find(params[:id])
    @post195.destroy

    respond_to do |format|
      format.html { redirect_to(post195s_url) }
      format.xml  { head :ok }
    end
  end
end
