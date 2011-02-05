class Post10sController < ApplicationController
  # GET /post10s
  # GET /post10s.xml
  def index
    @post10s = Post10.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post10s }
    end
  end

  # GET /post10s/1
  # GET /post10s/1.xml
  def show
    @post10 = Post10.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post10 }
    end
  end

  # GET /post10s/new
  # GET /post10s/new.xml
  def new
    @post10 = Post10.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post10 }
    end
  end

  # GET /post10s/1/edit
  def edit
    @post10 = Post10.find(params[:id])
  end

  # POST /post10s
  # POST /post10s.xml
  def create
    @post10 = Post10.new(params[:post10])

    respond_to do |format|
      if @post10.save
        format.html { redirect_to(@post10, :notice => 'Post10 was successfully created.') }
        format.xml  { render :xml => @post10, :status => :created, :location => @post10 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post10.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post10s/1
  # PUT /post10s/1.xml
  def update
    @post10 = Post10.find(params[:id])

    respond_to do |format|
      if @post10.update_attributes(params[:post10])
        format.html { redirect_to(@post10, :notice => 'Post10 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post10.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post10s/1
  # DELETE /post10s/1.xml
  def destroy
    @post10 = Post10.find(params[:id])
    @post10.destroy

    respond_to do |format|
      format.html { redirect_to(post10s_url) }
      format.xml  { head :ok }
    end
  end
end
