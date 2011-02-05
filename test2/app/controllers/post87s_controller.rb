class Post87sController < ApplicationController
  # GET /post87s
  # GET /post87s.xml
  def index
    @post87s = Post87.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post87s }
    end
  end

  # GET /post87s/1
  # GET /post87s/1.xml
  def show
    @post87 = Post87.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post87 }
    end
  end

  # GET /post87s/new
  # GET /post87s/new.xml
  def new
    @post87 = Post87.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post87 }
    end
  end

  # GET /post87s/1/edit
  def edit
    @post87 = Post87.find(params[:id])
  end

  # POST /post87s
  # POST /post87s.xml
  def create
    @post87 = Post87.new(params[:post87])

    respond_to do |format|
      if @post87.save
        format.html { redirect_to(@post87, :notice => 'Post87 was successfully created.') }
        format.xml  { render :xml => @post87, :status => :created, :location => @post87 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post87.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post87s/1
  # PUT /post87s/1.xml
  def update
    @post87 = Post87.find(params[:id])

    respond_to do |format|
      if @post87.update_attributes(params[:post87])
        format.html { redirect_to(@post87, :notice => 'Post87 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post87.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post87s/1
  # DELETE /post87s/1.xml
  def destroy
    @post87 = Post87.find(params[:id])
    @post87.destroy

    respond_to do |format|
      format.html { redirect_to(post87s_url) }
      format.xml  { head :ok }
    end
  end
end
