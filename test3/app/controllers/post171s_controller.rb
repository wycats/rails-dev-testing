class Post171sController < ApplicationController
  # GET /post171s
  # GET /post171s.xml
  def index
    @post171s = Post171.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post171s }
    end
  end

  # GET /post171s/1
  # GET /post171s/1.xml
  def show
    @post171 = Post171.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post171 }
    end
  end

  # GET /post171s/new
  # GET /post171s/new.xml
  def new
    @post171 = Post171.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post171 }
    end
  end

  # GET /post171s/1/edit
  def edit
    @post171 = Post171.find(params[:id])
  end

  # POST /post171s
  # POST /post171s.xml
  def create
    @post171 = Post171.new(params[:post171])

    respond_to do |format|
      if @post171.save
        format.html { redirect_to(@post171, :notice => 'Post171 was successfully created.') }
        format.xml  { render :xml => @post171, :status => :created, :location => @post171 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post171.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post171s/1
  # PUT /post171s/1.xml
  def update
    @post171 = Post171.find(params[:id])

    respond_to do |format|
      if @post171.update_attributes(params[:post171])
        format.html { redirect_to(@post171, :notice => 'Post171 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post171.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post171s/1
  # DELETE /post171s/1.xml
  def destroy
    @post171 = Post171.find(params[:id])
    @post171.destroy

    respond_to do |format|
      format.html { redirect_to(post171s_url) }
      format.xml  { head :ok }
    end
  end
end
