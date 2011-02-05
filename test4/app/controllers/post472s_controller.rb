class Post472sController < ApplicationController
  # GET /post472s
  # GET /post472s.xml
  def index
    @post472s = Post472.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post472s }
    end
  end

  # GET /post472s/1
  # GET /post472s/1.xml
  def show
    @post472 = Post472.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post472 }
    end
  end

  # GET /post472s/new
  # GET /post472s/new.xml
  def new
    @post472 = Post472.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post472 }
    end
  end

  # GET /post472s/1/edit
  def edit
    @post472 = Post472.find(params[:id])
  end

  # POST /post472s
  # POST /post472s.xml
  def create
    @post472 = Post472.new(params[:post472])

    respond_to do |format|
      if @post472.save
        format.html { redirect_to(@post472, :notice => 'Post472 was successfully created.') }
        format.xml  { render :xml => @post472, :status => :created, :location => @post472 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post472.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post472s/1
  # PUT /post472s/1.xml
  def update
    @post472 = Post472.find(params[:id])

    respond_to do |format|
      if @post472.update_attributes(params[:post472])
        format.html { redirect_to(@post472, :notice => 'Post472 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post472.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post472s/1
  # DELETE /post472s/1.xml
  def destroy
    @post472 = Post472.find(params[:id])
    @post472.destroy

    respond_to do |format|
      format.html { redirect_to(post472s_url) }
      format.xml  { head :ok }
    end
  end
end
