class Post285sController < ApplicationController
  # GET /post285s
  # GET /post285s.xml
  def index
    @post285s = Post285.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post285s }
    end
  end

  # GET /post285s/1
  # GET /post285s/1.xml
  def show
    @post285 = Post285.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post285 }
    end
  end

  # GET /post285s/new
  # GET /post285s/new.xml
  def new
    @post285 = Post285.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post285 }
    end
  end

  # GET /post285s/1/edit
  def edit
    @post285 = Post285.find(params[:id])
  end

  # POST /post285s
  # POST /post285s.xml
  def create
    @post285 = Post285.new(params[:post285])

    respond_to do |format|
      if @post285.save
        format.html { redirect_to(@post285, :notice => 'Post285 was successfully created.') }
        format.xml  { render :xml => @post285, :status => :created, :location => @post285 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post285.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post285s/1
  # PUT /post285s/1.xml
  def update
    @post285 = Post285.find(params[:id])

    respond_to do |format|
      if @post285.update_attributes(params[:post285])
        format.html { redirect_to(@post285, :notice => 'Post285 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post285.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post285s/1
  # DELETE /post285s/1.xml
  def destroy
    @post285 = Post285.find(params[:id])
    @post285.destroy

    respond_to do |format|
      format.html { redirect_to(post285s_url) }
      format.xml  { head :ok }
    end
  end
end
