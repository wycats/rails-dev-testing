class Post8sController < ApplicationController
  # GET /post8s
  # GET /post8s.xml
  def index
    @post8s = Post8.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post8s }
    end
  end

  # GET /post8s/1
  # GET /post8s/1.xml
  def show
    @post8 = Post8.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post8 }
    end
  end

  # GET /post8s/new
  # GET /post8s/new.xml
  def new
    @post8 = Post8.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post8 }
    end
  end

  # GET /post8s/1/edit
  def edit
    @post8 = Post8.find(params[:id])
  end

  # POST /post8s
  # POST /post8s.xml
  def create
    @post8 = Post8.new(params[:post8])

    respond_to do |format|
      if @post8.save
        format.html { redirect_to(@post8, :notice => 'Post8 was successfully created.') }
        format.xml  { render :xml => @post8, :status => :created, :location => @post8 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post8.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post8s/1
  # PUT /post8s/1.xml
  def update
    @post8 = Post8.find(params[:id])

    respond_to do |format|
      if @post8.update_attributes(params[:post8])
        format.html { redirect_to(@post8, :notice => 'Post8 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post8.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post8s/1
  # DELETE /post8s/1.xml
  def destroy
    @post8 = Post8.find(params[:id])
    @post8.destroy

    respond_to do |format|
      format.html { redirect_to(post8s_url) }
      format.xml  { head :ok }
    end
  end
end
