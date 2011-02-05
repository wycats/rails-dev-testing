class Post30sController < ApplicationController
  # GET /post30s
  # GET /post30s.xml
  def index
    @post30s = Post30.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post30s }
    end
  end

  # GET /post30s/1
  # GET /post30s/1.xml
  def show
    @post30 = Post30.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post30 }
    end
  end

  # GET /post30s/new
  # GET /post30s/new.xml
  def new
    @post30 = Post30.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post30 }
    end
  end

  # GET /post30s/1/edit
  def edit
    @post30 = Post30.find(params[:id])
  end

  # POST /post30s
  # POST /post30s.xml
  def create
    @post30 = Post30.new(params[:post30])

    respond_to do |format|
      if @post30.save
        format.html { redirect_to(@post30, :notice => 'Post30 was successfully created.') }
        format.xml  { render :xml => @post30, :status => :created, :location => @post30 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post30.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post30s/1
  # PUT /post30s/1.xml
  def update
    @post30 = Post30.find(params[:id])

    respond_to do |format|
      if @post30.update_attributes(params[:post30])
        format.html { redirect_to(@post30, :notice => 'Post30 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post30.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post30s/1
  # DELETE /post30s/1.xml
  def destroy
    @post30 = Post30.find(params[:id])
    @post30.destroy

    respond_to do |format|
      format.html { redirect_to(post30s_url) }
      format.xml  { head :ok }
    end
  end
end
