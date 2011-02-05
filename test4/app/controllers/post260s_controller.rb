class Post260sController < ApplicationController
  # GET /post260s
  # GET /post260s.xml
  def index
    @post260s = Post260.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post260s }
    end
  end

  # GET /post260s/1
  # GET /post260s/1.xml
  def show
    @post260 = Post260.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post260 }
    end
  end

  # GET /post260s/new
  # GET /post260s/new.xml
  def new
    @post260 = Post260.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post260 }
    end
  end

  # GET /post260s/1/edit
  def edit
    @post260 = Post260.find(params[:id])
  end

  # POST /post260s
  # POST /post260s.xml
  def create
    @post260 = Post260.new(params[:post260])

    respond_to do |format|
      if @post260.save
        format.html { redirect_to(@post260, :notice => 'Post260 was successfully created.') }
        format.xml  { render :xml => @post260, :status => :created, :location => @post260 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post260.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post260s/1
  # PUT /post260s/1.xml
  def update
    @post260 = Post260.find(params[:id])

    respond_to do |format|
      if @post260.update_attributes(params[:post260])
        format.html { redirect_to(@post260, :notice => 'Post260 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post260.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post260s/1
  # DELETE /post260s/1.xml
  def destroy
    @post260 = Post260.find(params[:id])
    @post260.destroy

    respond_to do |format|
      format.html { redirect_to(post260s_url) }
      format.xml  { head :ok }
    end
  end
end
