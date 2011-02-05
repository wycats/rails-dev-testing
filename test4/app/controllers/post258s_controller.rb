class Post258sController < ApplicationController
  # GET /post258s
  # GET /post258s.xml
  def index
    @post258s = Post258.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post258s }
    end
  end

  # GET /post258s/1
  # GET /post258s/1.xml
  def show
    @post258 = Post258.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post258 }
    end
  end

  # GET /post258s/new
  # GET /post258s/new.xml
  def new
    @post258 = Post258.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post258 }
    end
  end

  # GET /post258s/1/edit
  def edit
    @post258 = Post258.find(params[:id])
  end

  # POST /post258s
  # POST /post258s.xml
  def create
    @post258 = Post258.new(params[:post258])

    respond_to do |format|
      if @post258.save
        format.html { redirect_to(@post258, :notice => 'Post258 was successfully created.') }
        format.xml  { render :xml => @post258, :status => :created, :location => @post258 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post258.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post258s/1
  # PUT /post258s/1.xml
  def update
    @post258 = Post258.find(params[:id])

    respond_to do |format|
      if @post258.update_attributes(params[:post258])
        format.html { redirect_to(@post258, :notice => 'Post258 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post258.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post258s/1
  # DELETE /post258s/1.xml
  def destroy
    @post258 = Post258.find(params[:id])
    @post258.destroy

    respond_to do |format|
      format.html { redirect_to(post258s_url) }
      format.xml  { head :ok }
    end
  end
end
