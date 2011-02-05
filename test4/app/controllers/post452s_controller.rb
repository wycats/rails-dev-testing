class Post452sController < ApplicationController
  # GET /post452s
  # GET /post452s.xml
  def index
    @post452s = Post452.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post452s }
    end
  end

  # GET /post452s/1
  # GET /post452s/1.xml
  def show
    @post452 = Post452.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post452 }
    end
  end

  # GET /post452s/new
  # GET /post452s/new.xml
  def new
    @post452 = Post452.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post452 }
    end
  end

  # GET /post452s/1/edit
  def edit
    @post452 = Post452.find(params[:id])
  end

  # POST /post452s
  # POST /post452s.xml
  def create
    @post452 = Post452.new(params[:post452])

    respond_to do |format|
      if @post452.save
        format.html { redirect_to(@post452, :notice => 'Post452 was successfully created.') }
        format.xml  { render :xml => @post452, :status => :created, :location => @post452 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post452.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post452s/1
  # PUT /post452s/1.xml
  def update
    @post452 = Post452.find(params[:id])

    respond_to do |format|
      if @post452.update_attributes(params[:post452])
        format.html { redirect_to(@post452, :notice => 'Post452 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post452.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post452s/1
  # DELETE /post452s/1.xml
  def destroy
    @post452 = Post452.find(params[:id])
    @post452.destroy

    respond_to do |format|
      format.html { redirect_to(post452s_url) }
      format.xml  { head :ok }
    end
  end
end
