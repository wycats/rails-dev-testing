class Post475sController < ApplicationController
  # GET /post475s
  # GET /post475s.xml
  def index
    @post475s = Post475.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post475s }
    end
  end

  # GET /post475s/1
  # GET /post475s/1.xml
  def show
    @post475 = Post475.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post475 }
    end
  end

  # GET /post475s/new
  # GET /post475s/new.xml
  def new
    @post475 = Post475.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post475 }
    end
  end

  # GET /post475s/1/edit
  def edit
    @post475 = Post475.find(params[:id])
  end

  # POST /post475s
  # POST /post475s.xml
  def create
    @post475 = Post475.new(params[:post475])

    respond_to do |format|
      if @post475.save
        format.html { redirect_to(@post475, :notice => 'Post475 was successfully created.') }
        format.xml  { render :xml => @post475, :status => :created, :location => @post475 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post475.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post475s/1
  # PUT /post475s/1.xml
  def update
    @post475 = Post475.find(params[:id])

    respond_to do |format|
      if @post475.update_attributes(params[:post475])
        format.html { redirect_to(@post475, :notice => 'Post475 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post475.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post475s/1
  # DELETE /post475s/1.xml
  def destroy
    @post475 = Post475.find(params[:id])
    @post475.destroy

    respond_to do |format|
      format.html { redirect_to(post475s_url) }
      format.xml  { head :ok }
    end
  end
end
