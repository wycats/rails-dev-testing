class Post463sController < ApplicationController
  # GET /post463s
  # GET /post463s.xml
  def index
    @post463s = Post463.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post463s }
    end
  end

  # GET /post463s/1
  # GET /post463s/1.xml
  def show
    @post463 = Post463.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post463 }
    end
  end

  # GET /post463s/new
  # GET /post463s/new.xml
  def new
    @post463 = Post463.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post463 }
    end
  end

  # GET /post463s/1/edit
  def edit
    @post463 = Post463.find(params[:id])
  end

  # POST /post463s
  # POST /post463s.xml
  def create
    @post463 = Post463.new(params[:post463])

    respond_to do |format|
      if @post463.save
        format.html { redirect_to(@post463, :notice => 'Post463 was successfully created.') }
        format.xml  { render :xml => @post463, :status => :created, :location => @post463 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post463.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post463s/1
  # PUT /post463s/1.xml
  def update
    @post463 = Post463.find(params[:id])

    respond_to do |format|
      if @post463.update_attributes(params[:post463])
        format.html { redirect_to(@post463, :notice => 'Post463 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post463.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post463s/1
  # DELETE /post463s/1.xml
  def destroy
    @post463 = Post463.find(params[:id])
    @post463.destroy

    respond_to do |format|
      format.html { redirect_to(post463s_url) }
      format.xml  { head :ok }
    end
  end
end
