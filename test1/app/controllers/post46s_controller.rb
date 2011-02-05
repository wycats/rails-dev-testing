class Post46sController < ApplicationController
  # GET /post46s
  # GET /post46s.xml
  def index
    @post46s = Post46.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post46s }
    end
  end

  # GET /post46s/1
  # GET /post46s/1.xml
  def show
    @post46 = Post46.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post46 }
    end
  end

  # GET /post46s/new
  # GET /post46s/new.xml
  def new
    @post46 = Post46.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post46 }
    end
  end

  # GET /post46s/1/edit
  def edit
    @post46 = Post46.find(params[:id])
  end

  # POST /post46s
  # POST /post46s.xml
  def create
    @post46 = Post46.new(params[:post46])

    respond_to do |format|
      if @post46.save
        format.html { redirect_to(@post46, :notice => 'Post46 was successfully created.') }
        format.xml  { render :xml => @post46, :status => :created, :location => @post46 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post46.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post46s/1
  # PUT /post46s/1.xml
  def update
    @post46 = Post46.find(params[:id])

    respond_to do |format|
      if @post46.update_attributes(params[:post46])
        format.html { redirect_to(@post46, :notice => 'Post46 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post46.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post46s/1
  # DELETE /post46s/1.xml
  def destroy
    @post46 = Post46.find(params[:id])
    @post46.destroy

    respond_to do |format|
      format.html { redirect_to(post46s_url) }
      format.xml  { head :ok }
    end
  end
end
