class Post233sController < ApplicationController
  # GET /post233s
  # GET /post233s.xml
  def index
    @post233s = Post233.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post233s }
    end
  end

  # GET /post233s/1
  # GET /post233s/1.xml
  def show
    @post233 = Post233.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post233 }
    end
  end

  # GET /post233s/new
  # GET /post233s/new.xml
  def new
    @post233 = Post233.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post233 }
    end
  end

  # GET /post233s/1/edit
  def edit
    @post233 = Post233.find(params[:id])
  end

  # POST /post233s
  # POST /post233s.xml
  def create
    @post233 = Post233.new(params[:post233])

    respond_to do |format|
      if @post233.save
        format.html { redirect_to(@post233, :notice => 'Post233 was successfully created.') }
        format.xml  { render :xml => @post233, :status => :created, :location => @post233 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post233.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post233s/1
  # PUT /post233s/1.xml
  def update
    @post233 = Post233.find(params[:id])

    respond_to do |format|
      if @post233.update_attributes(params[:post233])
        format.html { redirect_to(@post233, :notice => 'Post233 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post233.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post233s/1
  # DELETE /post233s/1.xml
  def destroy
    @post233 = Post233.find(params[:id])
    @post233.destroy

    respond_to do |format|
      format.html { redirect_to(post233s_url) }
      format.xml  { head :ok }
    end
  end
end
