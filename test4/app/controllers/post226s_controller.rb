class Post226sController < ApplicationController
  # GET /post226s
  # GET /post226s.xml
  def index
    @post226s = Post226.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post226s }
    end
  end

  # GET /post226s/1
  # GET /post226s/1.xml
  def show
    @post226 = Post226.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post226 }
    end
  end

  # GET /post226s/new
  # GET /post226s/new.xml
  def new
    @post226 = Post226.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post226 }
    end
  end

  # GET /post226s/1/edit
  def edit
    @post226 = Post226.find(params[:id])
  end

  # POST /post226s
  # POST /post226s.xml
  def create
    @post226 = Post226.new(params[:post226])

    respond_to do |format|
      if @post226.save
        format.html { redirect_to(@post226, :notice => 'Post226 was successfully created.') }
        format.xml  { render :xml => @post226, :status => :created, :location => @post226 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post226.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post226s/1
  # PUT /post226s/1.xml
  def update
    @post226 = Post226.find(params[:id])

    respond_to do |format|
      if @post226.update_attributes(params[:post226])
        format.html { redirect_to(@post226, :notice => 'Post226 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post226.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post226s/1
  # DELETE /post226s/1.xml
  def destroy
    @post226 = Post226.find(params[:id])
    @post226.destroy

    respond_to do |format|
      format.html { redirect_to(post226s_url) }
      format.xml  { head :ok }
    end
  end
end
