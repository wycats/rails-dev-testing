class Post83sController < ApplicationController
  # GET /post83s
  # GET /post83s.xml
  def index
    @post83s = Post83.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post83s }
    end
  end

  # GET /post83s/1
  # GET /post83s/1.xml
  def show
    @post83 = Post83.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post83 }
    end
  end

  # GET /post83s/new
  # GET /post83s/new.xml
  def new
    @post83 = Post83.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post83 }
    end
  end

  # GET /post83s/1/edit
  def edit
    @post83 = Post83.find(params[:id])
  end

  # POST /post83s
  # POST /post83s.xml
  def create
    @post83 = Post83.new(params[:post83])

    respond_to do |format|
      if @post83.save
        format.html { redirect_to(@post83, :notice => 'Post83 was successfully created.') }
        format.xml  { render :xml => @post83, :status => :created, :location => @post83 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post83.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post83s/1
  # PUT /post83s/1.xml
  def update
    @post83 = Post83.find(params[:id])

    respond_to do |format|
      if @post83.update_attributes(params[:post83])
        format.html { redirect_to(@post83, :notice => 'Post83 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post83.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post83s/1
  # DELETE /post83s/1.xml
  def destroy
    @post83 = Post83.find(params[:id])
    @post83.destroy

    respond_to do |format|
      format.html { redirect_to(post83s_url) }
      format.xml  { head :ok }
    end
  end
end
