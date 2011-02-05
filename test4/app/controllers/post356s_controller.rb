class Post356sController < ApplicationController
  # GET /post356s
  # GET /post356s.xml
  def index
    @post356s = Post356.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post356s }
    end
  end

  # GET /post356s/1
  # GET /post356s/1.xml
  def show
    @post356 = Post356.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post356 }
    end
  end

  # GET /post356s/new
  # GET /post356s/new.xml
  def new
    @post356 = Post356.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post356 }
    end
  end

  # GET /post356s/1/edit
  def edit
    @post356 = Post356.find(params[:id])
  end

  # POST /post356s
  # POST /post356s.xml
  def create
    @post356 = Post356.new(params[:post356])

    respond_to do |format|
      if @post356.save
        format.html { redirect_to(@post356, :notice => 'Post356 was successfully created.') }
        format.xml  { render :xml => @post356, :status => :created, :location => @post356 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post356.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post356s/1
  # PUT /post356s/1.xml
  def update
    @post356 = Post356.find(params[:id])

    respond_to do |format|
      if @post356.update_attributes(params[:post356])
        format.html { redirect_to(@post356, :notice => 'Post356 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post356.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post356s/1
  # DELETE /post356s/1.xml
  def destroy
    @post356 = Post356.find(params[:id])
    @post356.destroy

    respond_to do |format|
      format.html { redirect_to(post356s_url) }
      format.xml  { head :ok }
    end
  end
end
