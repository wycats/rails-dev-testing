class Post117sController < ApplicationController
  # GET /post117s
  # GET /post117s.xml
  def index
    @post117s = Post117.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post117s }
    end
  end

  # GET /post117s/1
  # GET /post117s/1.xml
  def show
    @post117 = Post117.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post117 }
    end
  end

  # GET /post117s/new
  # GET /post117s/new.xml
  def new
    @post117 = Post117.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post117 }
    end
  end

  # GET /post117s/1/edit
  def edit
    @post117 = Post117.find(params[:id])
  end

  # POST /post117s
  # POST /post117s.xml
  def create
    @post117 = Post117.new(params[:post117])

    respond_to do |format|
      if @post117.save
        format.html { redirect_to(@post117, :notice => 'Post117 was successfully created.') }
        format.xml  { render :xml => @post117, :status => :created, :location => @post117 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post117.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post117s/1
  # PUT /post117s/1.xml
  def update
    @post117 = Post117.find(params[:id])

    respond_to do |format|
      if @post117.update_attributes(params[:post117])
        format.html { redirect_to(@post117, :notice => 'Post117 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post117.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post117s/1
  # DELETE /post117s/1.xml
  def destroy
    @post117 = Post117.find(params[:id])
    @post117.destroy

    respond_to do |format|
      format.html { redirect_to(post117s_url) }
      format.xml  { head :ok }
    end
  end
end
