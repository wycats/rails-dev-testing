class Post401sController < ApplicationController
  # GET /post401s
  # GET /post401s.xml
  def index
    @post401s = Post401.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post401s }
    end
  end

  # GET /post401s/1
  # GET /post401s/1.xml
  def show
    @post401 = Post401.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post401 }
    end
  end

  # GET /post401s/new
  # GET /post401s/new.xml
  def new
    @post401 = Post401.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post401 }
    end
  end

  # GET /post401s/1/edit
  def edit
    @post401 = Post401.find(params[:id])
  end

  # POST /post401s
  # POST /post401s.xml
  def create
    @post401 = Post401.new(params[:post401])

    respond_to do |format|
      if @post401.save
        format.html { redirect_to(@post401, :notice => 'Post401 was successfully created.') }
        format.xml  { render :xml => @post401, :status => :created, :location => @post401 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post401.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post401s/1
  # PUT /post401s/1.xml
  def update
    @post401 = Post401.find(params[:id])

    respond_to do |format|
      if @post401.update_attributes(params[:post401])
        format.html { redirect_to(@post401, :notice => 'Post401 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post401.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post401s/1
  # DELETE /post401s/1.xml
  def destroy
    @post401 = Post401.find(params[:id])
    @post401.destroy

    respond_to do |format|
      format.html { redirect_to(post401s_url) }
      format.xml  { head :ok }
    end
  end
end
