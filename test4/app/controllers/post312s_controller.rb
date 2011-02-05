class Post312sController < ApplicationController
  # GET /post312s
  # GET /post312s.xml
  def index
    @post312s = Post312.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post312s }
    end
  end

  # GET /post312s/1
  # GET /post312s/1.xml
  def show
    @post312 = Post312.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post312 }
    end
  end

  # GET /post312s/new
  # GET /post312s/new.xml
  def new
    @post312 = Post312.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post312 }
    end
  end

  # GET /post312s/1/edit
  def edit
    @post312 = Post312.find(params[:id])
  end

  # POST /post312s
  # POST /post312s.xml
  def create
    @post312 = Post312.new(params[:post312])

    respond_to do |format|
      if @post312.save
        format.html { redirect_to(@post312, :notice => 'Post312 was successfully created.') }
        format.xml  { render :xml => @post312, :status => :created, :location => @post312 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post312.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post312s/1
  # PUT /post312s/1.xml
  def update
    @post312 = Post312.find(params[:id])

    respond_to do |format|
      if @post312.update_attributes(params[:post312])
        format.html { redirect_to(@post312, :notice => 'Post312 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post312.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post312s/1
  # DELETE /post312s/1.xml
  def destroy
    @post312 = Post312.find(params[:id])
    @post312.destroy

    respond_to do |format|
      format.html { redirect_to(post312s_url) }
      format.xml  { head :ok }
    end
  end
end
