class Post461sController < ApplicationController
  # GET /post461s
  # GET /post461s.xml
  def index
    @post461s = Post461.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post461s }
    end
  end

  # GET /post461s/1
  # GET /post461s/1.xml
  def show
    @post461 = Post461.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post461 }
    end
  end

  # GET /post461s/new
  # GET /post461s/new.xml
  def new
    @post461 = Post461.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post461 }
    end
  end

  # GET /post461s/1/edit
  def edit
    @post461 = Post461.find(params[:id])
  end

  # POST /post461s
  # POST /post461s.xml
  def create
    @post461 = Post461.new(params[:post461])

    respond_to do |format|
      if @post461.save
        format.html { redirect_to(@post461, :notice => 'Post461 was successfully created.') }
        format.xml  { render :xml => @post461, :status => :created, :location => @post461 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post461.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post461s/1
  # PUT /post461s/1.xml
  def update
    @post461 = Post461.find(params[:id])

    respond_to do |format|
      if @post461.update_attributes(params[:post461])
        format.html { redirect_to(@post461, :notice => 'Post461 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post461.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post461s/1
  # DELETE /post461s/1.xml
  def destroy
    @post461 = Post461.find(params[:id])
    @post461.destroy

    respond_to do |format|
      format.html { redirect_to(post461s_url) }
      format.xml  { head :ok }
    end
  end
end
