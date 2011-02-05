class Post405sController < ApplicationController
  # GET /post405s
  # GET /post405s.xml
  def index
    @post405s = Post405.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post405s }
    end
  end

  # GET /post405s/1
  # GET /post405s/1.xml
  def show
    @post405 = Post405.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post405 }
    end
  end

  # GET /post405s/new
  # GET /post405s/new.xml
  def new
    @post405 = Post405.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post405 }
    end
  end

  # GET /post405s/1/edit
  def edit
    @post405 = Post405.find(params[:id])
  end

  # POST /post405s
  # POST /post405s.xml
  def create
    @post405 = Post405.new(params[:post405])

    respond_to do |format|
      if @post405.save
        format.html { redirect_to(@post405, :notice => 'Post405 was successfully created.') }
        format.xml  { render :xml => @post405, :status => :created, :location => @post405 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post405.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post405s/1
  # PUT /post405s/1.xml
  def update
    @post405 = Post405.find(params[:id])

    respond_to do |format|
      if @post405.update_attributes(params[:post405])
        format.html { redirect_to(@post405, :notice => 'Post405 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post405.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post405s/1
  # DELETE /post405s/1.xml
  def destroy
    @post405 = Post405.find(params[:id])
    @post405.destroy

    respond_to do |format|
      format.html { redirect_to(post405s_url) }
      format.xml  { head :ok }
    end
  end
end
