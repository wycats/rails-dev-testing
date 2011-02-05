class Post33sController < ApplicationController
  # GET /post33s
  # GET /post33s.xml
  def index
    @post33s = Post33.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post33s }
    end
  end

  # GET /post33s/1
  # GET /post33s/1.xml
  def show
    @post33 = Post33.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post33 }
    end
  end

  # GET /post33s/new
  # GET /post33s/new.xml
  def new
    @post33 = Post33.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post33 }
    end
  end

  # GET /post33s/1/edit
  def edit
    @post33 = Post33.find(params[:id])
  end

  # POST /post33s
  # POST /post33s.xml
  def create
    @post33 = Post33.new(params[:post33])

    respond_to do |format|
      if @post33.save
        format.html { redirect_to(@post33, :notice => 'Post33 was successfully created.') }
        format.xml  { render :xml => @post33, :status => :created, :location => @post33 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post33.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post33s/1
  # PUT /post33s/1.xml
  def update
    @post33 = Post33.find(params[:id])

    respond_to do |format|
      if @post33.update_attributes(params[:post33])
        format.html { redirect_to(@post33, :notice => 'Post33 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post33.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post33s/1
  # DELETE /post33s/1.xml
  def destroy
    @post33 = Post33.find(params[:id])
    @post33.destroy

    respond_to do |format|
      format.html { redirect_to(post33s_url) }
      format.xml  { head :ok }
    end
  end
end
