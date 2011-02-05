class Post384sController < ApplicationController
  # GET /post384s
  # GET /post384s.xml
  def index
    @post384s = Post384.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post384s }
    end
  end

  # GET /post384s/1
  # GET /post384s/1.xml
  def show
    @post384 = Post384.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post384 }
    end
  end

  # GET /post384s/new
  # GET /post384s/new.xml
  def new
    @post384 = Post384.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post384 }
    end
  end

  # GET /post384s/1/edit
  def edit
    @post384 = Post384.find(params[:id])
  end

  # POST /post384s
  # POST /post384s.xml
  def create
    @post384 = Post384.new(params[:post384])

    respond_to do |format|
      if @post384.save
        format.html { redirect_to(@post384, :notice => 'Post384 was successfully created.') }
        format.xml  { render :xml => @post384, :status => :created, :location => @post384 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post384.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post384s/1
  # PUT /post384s/1.xml
  def update
    @post384 = Post384.find(params[:id])

    respond_to do |format|
      if @post384.update_attributes(params[:post384])
        format.html { redirect_to(@post384, :notice => 'Post384 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post384.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post384s/1
  # DELETE /post384s/1.xml
  def destroy
    @post384 = Post384.find(params[:id])
    @post384.destroy

    respond_to do |format|
      format.html { redirect_to(post384s_url) }
      format.xml  { head :ok }
    end
  end
end
