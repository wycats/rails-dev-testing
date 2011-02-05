class Post170sController < ApplicationController
  # GET /post170s
  # GET /post170s.xml
  def index
    @post170s = Post170.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post170s }
    end
  end

  # GET /post170s/1
  # GET /post170s/1.xml
  def show
    @post170 = Post170.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post170 }
    end
  end

  # GET /post170s/new
  # GET /post170s/new.xml
  def new
    @post170 = Post170.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post170 }
    end
  end

  # GET /post170s/1/edit
  def edit
    @post170 = Post170.find(params[:id])
  end

  # POST /post170s
  # POST /post170s.xml
  def create
    @post170 = Post170.new(params[:post170])

    respond_to do |format|
      if @post170.save
        format.html { redirect_to(@post170, :notice => 'Post170 was successfully created.') }
        format.xml  { render :xml => @post170, :status => :created, :location => @post170 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post170.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post170s/1
  # PUT /post170s/1.xml
  def update
    @post170 = Post170.find(params[:id])

    respond_to do |format|
      if @post170.update_attributes(params[:post170])
        format.html { redirect_to(@post170, :notice => 'Post170 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post170.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post170s/1
  # DELETE /post170s/1.xml
  def destroy
    @post170 = Post170.find(params[:id])
    @post170.destroy

    respond_to do |format|
      format.html { redirect_to(post170s_url) }
      format.xml  { head :ok }
    end
  end
end
