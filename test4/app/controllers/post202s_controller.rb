class Post202sController < ApplicationController
  # GET /post202s
  # GET /post202s.xml
  def index
    @post202s = Post202.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post202s }
    end
  end

  # GET /post202s/1
  # GET /post202s/1.xml
  def show
    @post202 = Post202.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post202 }
    end
  end

  # GET /post202s/new
  # GET /post202s/new.xml
  def new
    @post202 = Post202.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post202 }
    end
  end

  # GET /post202s/1/edit
  def edit
    @post202 = Post202.find(params[:id])
  end

  # POST /post202s
  # POST /post202s.xml
  def create
    @post202 = Post202.new(params[:post202])

    respond_to do |format|
      if @post202.save
        format.html { redirect_to(@post202, :notice => 'Post202 was successfully created.') }
        format.xml  { render :xml => @post202, :status => :created, :location => @post202 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post202.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post202s/1
  # PUT /post202s/1.xml
  def update
    @post202 = Post202.find(params[:id])

    respond_to do |format|
      if @post202.update_attributes(params[:post202])
        format.html { redirect_to(@post202, :notice => 'Post202 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post202.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post202s/1
  # DELETE /post202s/1.xml
  def destroy
    @post202 = Post202.find(params[:id])
    @post202.destroy

    respond_to do |format|
      format.html { redirect_to(post202s_url) }
      format.xml  { head :ok }
    end
  end
end
