class Post241sController < ApplicationController
  # GET /post241s
  # GET /post241s.xml
  def index
    @post241s = Post241.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post241s }
    end
  end

  # GET /post241s/1
  # GET /post241s/1.xml
  def show
    @post241 = Post241.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post241 }
    end
  end

  # GET /post241s/new
  # GET /post241s/new.xml
  def new
    @post241 = Post241.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post241 }
    end
  end

  # GET /post241s/1/edit
  def edit
    @post241 = Post241.find(params[:id])
  end

  # POST /post241s
  # POST /post241s.xml
  def create
    @post241 = Post241.new(params[:post241])

    respond_to do |format|
      if @post241.save
        format.html { redirect_to(@post241, :notice => 'Post241 was successfully created.') }
        format.xml  { render :xml => @post241, :status => :created, :location => @post241 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post241.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post241s/1
  # PUT /post241s/1.xml
  def update
    @post241 = Post241.find(params[:id])

    respond_to do |format|
      if @post241.update_attributes(params[:post241])
        format.html { redirect_to(@post241, :notice => 'Post241 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post241.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post241s/1
  # DELETE /post241s/1.xml
  def destroy
    @post241 = Post241.find(params[:id])
    @post241.destroy

    respond_to do |format|
      format.html { redirect_to(post241s_url) }
      format.xml  { head :ok }
    end
  end
end
