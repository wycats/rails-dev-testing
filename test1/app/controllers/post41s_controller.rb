class Post41sController < ApplicationController
  # GET /post41s
  # GET /post41s.xml
  def index
    @post41s = Post41.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post41s }
    end
  end

  # GET /post41s/1
  # GET /post41s/1.xml
  def show
    @post41 = Post41.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post41 }
    end
  end

  # GET /post41s/new
  # GET /post41s/new.xml
  def new
    @post41 = Post41.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post41 }
    end
  end

  # GET /post41s/1/edit
  def edit
    @post41 = Post41.find(params[:id])
  end

  # POST /post41s
  # POST /post41s.xml
  def create
    @post41 = Post41.new(params[:post41])

    respond_to do |format|
      if @post41.save
        format.html { redirect_to(@post41, :notice => 'Post41 was successfully created.') }
        format.xml  { render :xml => @post41, :status => :created, :location => @post41 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post41.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post41s/1
  # PUT /post41s/1.xml
  def update
    @post41 = Post41.find(params[:id])

    respond_to do |format|
      if @post41.update_attributes(params[:post41])
        format.html { redirect_to(@post41, :notice => 'Post41 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post41.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post41s/1
  # DELETE /post41s/1.xml
  def destroy
    @post41 = Post41.find(params[:id])
    @post41.destroy

    respond_to do |format|
      format.html { redirect_to(post41s_url) }
      format.xml  { head :ok }
    end
  end
end
