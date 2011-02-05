class Post73sController < ApplicationController
  # GET /post73s
  # GET /post73s.xml
  def index
    @post73s = Post73.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post73s }
    end
  end

  # GET /post73s/1
  # GET /post73s/1.xml
  def show
    @post73 = Post73.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post73 }
    end
  end

  # GET /post73s/new
  # GET /post73s/new.xml
  def new
    @post73 = Post73.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post73 }
    end
  end

  # GET /post73s/1/edit
  def edit
    @post73 = Post73.find(params[:id])
  end

  # POST /post73s
  # POST /post73s.xml
  def create
    @post73 = Post73.new(params[:post73])

    respond_to do |format|
      if @post73.save
        format.html { redirect_to(@post73, :notice => 'Post73 was successfully created.') }
        format.xml  { render :xml => @post73, :status => :created, :location => @post73 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post73.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post73s/1
  # PUT /post73s/1.xml
  def update
    @post73 = Post73.find(params[:id])

    respond_to do |format|
      if @post73.update_attributes(params[:post73])
        format.html { redirect_to(@post73, :notice => 'Post73 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post73.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post73s/1
  # DELETE /post73s/1.xml
  def destroy
    @post73 = Post73.find(params[:id])
    @post73.destroy

    respond_to do |format|
      format.html { redirect_to(post73s_url) }
      format.xml  { head :ok }
    end
  end
end
