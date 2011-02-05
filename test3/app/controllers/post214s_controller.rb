class Post214sController < ApplicationController
  # GET /post214s
  # GET /post214s.xml
  def index
    @post214s = Post214.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post214s }
    end
  end

  # GET /post214s/1
  # GET /post214s/1.xml
  def show
    @post214 = Post214.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post214 }
    end
  end

  # GET /post214s/new
  # GET /post214s/new.xml
  def new
    @post214 = Post214.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post214 }
    end
  end

  # GET /post214s/1/edit
  def edit
    @post214 = Post214.find(params[:id])
  end

  # POST /post214s
  # POST /post214s.xml
  def create
    @post214 = Post214.new(params[:post214])

    respond_to do |format|
      if @post214.save
        format.html { redirect_to(@post214, :notice => 'Post214 was successfully created.') }
        format.xml  { render :xml => @post214, :status => :created, :location => @post214 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post214.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post214s/1
  # PUT /post214s/1.xml
  def update
    @post214 = Post214.find(params[:id])

    respond_to do |format|
      if @post214.update_attributes(params[:post214])
        format.html { redirect_to(@post214, :notice => 'Post214 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post214.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post214s/1
  # DELETE /post214s/1.xml
  def destroy
    @post214 = Post214.find(params[:id])
    @post214.destroy

    respond_to do |format|
      format.html { redirect_to(post214s_url) }
      format.xml  { head :ok }
    end
  end
end
