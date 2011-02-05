class Post112sController < ApplicationController
  # GET /post112s
  # GET /post112s.xml
  def index
    @post112s = Post112.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post112s }
    end
  end

  # GET /post112s/1
  # GET /post112s/1.xml
  def show
    @post112 = Post112.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post112 }
    end
  end

  # GET /post112s/new
  # GET /post112s/new.xml
  def new
    @post112 = Post112.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post112 }
    end
  end

  # GET /post112s/1/edit
  def edit
    @post112 = Post112.find(params[:id])
  end

  # POST /post112s
  # POST /post112s.xml
  def create
    @post112 = Post112.new(params[:post112])

    respond_to do |format|
      if @post112.save
        format.html { redirect_to(@post112, :notice => 'Post112 was successfully created.') }
        format.xml  { render :xml => @post112, :status => :created, :location => @post112 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post112.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post112s/1
  # PUT /post112s/1.xml
  def update
    @post112 = Post112.find(params[:id])

    respond_to do |format|
      if @post112.update_attributes(params[:post112])
        format.html { redirect_to(@post112, :notice => 'Post112 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post112.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post112s/1
  # DELETE /post112s/1.xml
  def destroy
    @post112 = Post112.find(params[:id])
    @post112.destroy

    respond_to do |format|
      format.html { redirect_to(post112s_url) }
      format.xml  { head :ok }
    end
  end
end
