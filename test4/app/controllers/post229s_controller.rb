class Post229sController < ApplicationController
  # GET /post229s
  # GET /post229s.xml
  def index
    @post229s = Post229.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post229s }
    end
  end

  # GET /post229s/1
  # GET /post229s/1.xml
  def show
    @post229 = Post229.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post229 }
    end
  end

  # GET /post229s/new
  # GET /post229s/new.xml
  def new
    @post229 = Post229.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post229 }
    end
  end

  # GET /post229s/1/edit
  def edit
    @post229 = Post229.find(params[:id])
  end

  # POST /post229s
  # POST /post229s.xml
  def create
    @post229 = Post229.new(params[:post229])

    respond_to do |format|
      if @post229.save
        format.html { redirect_to(@post229, :notice => 'Post229 was successfully created.') }
        format.xml  { render :xml => @post229, :status => :created, :location => @post229 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post229.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post229s/1
  # PUT /post229s/1.xml
  def update
    @post229 = Post229.find(params[:id])

    respond_to do |format|
      if @post229.update_attributes(params[:post229])
        format.html { redirect_to(@post229, :notice => 'Post229 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post229.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post229s/1
  # DELETE /post229s/1.xml
  def destroy
    @post229 = Post229.find(params[:id])
    @post229.destroy

    respond_to do |format|
      format.html { redirect_to(post229s_url) }
      format.xml  { head :ok }
    end
  end
end
