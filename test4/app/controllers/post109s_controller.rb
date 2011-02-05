class Post109sController < ApplicationController
  # GET /post109s
  # GET /post109s.xml
  def index
    @post109s = Post109.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post109s }
    end
  end

  # GET /post109s/1
  # GET /post109s/1.xml
  def show
    @post109 = Post109.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post109 }
    end
  end

  # GET /post109s/new
  # GET /post109s/new.xml
  def new
    @post109 = Post109.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post109 }
    end
  end

  # GET /post109s/1/edit
  def edit
    @post109 = Post109.find(params[:id])
  end

  # POST /post109s
  # POST /post109s.xml
  def create
    @post109 = Post109.new(params[:post109])

    respond_to do |format|
      if @post109.save
        format.html { redirect_to(@post109, :notice => 'Post109 was successfully created.') }
        format.xml  { render :xml => @post109, :status => :created, :location => @post109 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post109.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post109s/1
  # PUT /post109s/1.xml
  def update
    @post109 = Post109.find(params[:id])

    respond_to do |format|
      if @post109.update_attributes(params[:post109])
        format.html { redirect_to(@post109, :notice => 'Post109 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post109.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post109s/1
  # DELETE /post109s/1.xml
  def destroy
    @post109 = Post109.find(params[:id])
    @post109.destroy

    respond_to do |format|
      format.html { redirect_to(post109s_url) }
      format.xml  { head :ok }
    end
  end
end
