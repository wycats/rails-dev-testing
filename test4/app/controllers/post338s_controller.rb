class Post338sController < ApplicationController
  # GET /post338s
  # GET /post338s.xml
  def index
    @post338s = Post338.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post338s }
    end
  end

  # GET /post338s/1
  # GET /post338s/1.xml
  def show
    @post338 = Post338.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post338 }
    end
  end

  # GET /post338s/new
  # GET /post338s/new.xml
  def new
    @post338 = Post338.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post338 }
    end
  end

  # GET /post338s/1/edit
  def edit
    @post338 = Post338.find(params[:id])
  end

  # POST /post338s
  # POST /post338s.xml
  def create
    @post338 = Post338.new(params[:post338])

    respond_to do |format|
      if @post338.save
        format.html { redirect_to(@post338, :notice => 'Post338 was successfully created.') }
        format.xml  { render :xml => @post338, :status => :created, :location => @post338 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post338.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post338s/1
  # PUT /post338s/1.xml
  def update
    @post338 = Post338.find(params[:id])

    respond_to do |format|
      if @post338.update_attributes(params[:post338])
        format.html { redirect_to(@post338, :notice => 'Post338 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post338.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post338s/1
  # DELETE /post338s/1.xml
  def destroy
    @post338 = Post338.find(params[:id])
    @post338.destroy

    respond_to do |format|
      format.html { redirect_to(post338s_url) }
      format.xml  { head :ok }
    end
  end
end
