class Post326sController < ApplicationController
  # GET /post326s
  # GET /post326s.xml
  def index
    @post326s = Post326.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post326s }
    end
  end

  # GET /post326s/1
  # GET /post326s/1.xml
  def show
    @post326 = Post326.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post326 }
    end
  end

  # GET /post326s/new
  # GET /post326s/new.xml
  def new
    @post326 = Post326.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post326 }
    end
  end

  # GET /post326s/1/edit
  def edit
    @post326 = Post326.find(params[:id])
  end

  # POST /post326s
  # POST /post326s.xml
  def create
    @post326 = Post326.new(params[:post326])

    respond_to do |format|
      if @post326.save
        format.html { redirect_to(@post326, :notice => 'Post326 was successfully created.') }
        format.xml  { render :xml => @post326, :status => :created, :location => @post326 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post326.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post326s/1
  # PUT /post326s/1.xml
  def update
    @post326 = Post326.find(params[:id])

    respond_to do |format|
      if @post326.update_attributes(params[:post326])
        format.html { redirect_to(@post326, :notice => 'Post326 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post326.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post326s/1
  # DELETE /post326s/1.xml
  def destroy
    @post326 = Post326.find(params[:id])
    @post326.destroy

    respond_to do |format|
      format.html { redirect_to(post326s_url) }
      format.xml  { head :ok }
    end
  end
end
