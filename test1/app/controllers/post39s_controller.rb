class Post39sController < ApplicationController
  # GET /post39s
  # GET /post39s.xml
  def index
    @post39s = Post39.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post39s }
    end
  end

  # GET /post39s/1
  # GET /post39s/1.xml
  def show
    @post39 = Post39.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post39 }
    end
  end

  # GET /post39s/new
  # GET /post39s/new.xml
  def new
    @post39 = Post39.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post39 }
    end
  end

  # GET /post39s/1/edit
  def edit
    @post39 = Post39.find(params[:id])
  end

  # POST /post39s
  # POST /post39s.xml
  def create
    @post39 = Post39.new(params[:post39])

    respond_to do |format|
      if @post39.save
        format.html { redirect_to(@post39, :notice => 'Post39 was successfully created.') }
        format.xml  { render :xml => @post39, :status => :created, :location => @post39 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post39.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post39s/1
  # PUT /post39s/1.xml
  def update
    @post39 = Post39.find(params[:id])

    respond_to do |format|
      if @post39.update_attributes(params[:post39])
        format.html { redirect_to(@post39, :notice => 'Post39 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post39.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post39s/1
  # DELETE /post39s/1.xml
  def destroy
    @post39 = Post39.find(params[:id])
    @post39.destroy

    respond_to do |format|
      format.html { redirect_to(post39s_url) }
      format.xml  { head :ok }
    end
  end
end
