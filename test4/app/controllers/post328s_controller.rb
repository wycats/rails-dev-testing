class Post328sController < ApplicationController
  # GET /post328s
  # GET /post328s.xml
  def index
    @post328s = Post328.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post328s }
    end
  end

  # GET /post328s/1
  # GET /post328s/1.xml
  def show
    @post328 = Post328.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post328 }
    end
  end

  # GET /post328s/new
  # GET /post328s/new.xml
  def new
    @post328 = Post328.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post328 }
    end
  end

  # GET /post328s/1/edit
  def edit
    @post328 = Post328.find(params[:id])
  end

  # POST /post328s
  # POST /post328s.xml
  def create
    @post328 = Post328.new(params[:post328])

    respond_to do |format|
      if @post328.save
        format.html { redirect_to(@post328, :notice => 'Post328 was successfully created.') }
        format.xml  { render :xml => @post328, :status => :created, :location => @post328 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post328.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post328s/1
  # PUT /post328s/1.xml
  def update
    @post328 = Post328.find(params[:id])

    respond_to do |format|
      if @post328.update_attributes(params[:post328])
        format.html { redirect_to(@post328, :notice => 'Post328 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post328.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post328s/1
  # DELETE /post328s/1.xml
  def destroy
    @post328 = Post328.find(params[:id])
    @post328.destroy

    respond_to do |format|
      format.html { redirect_to(post328s_url) }
      format.xml  { head :ok }
    end
  end
end
