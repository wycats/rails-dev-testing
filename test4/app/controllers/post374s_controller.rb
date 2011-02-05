class Post374sController < ApplicationController
  # GET /post374s
  # GET /post374s.xml
  def index
    @post374s = Post374.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post374s }
    end
  end

  # GET /post374s/1
  # GET /post374s/1.xml
  def show
    @post374 = Post374.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post374 }
    end
  end

  # GET /post374s/new
  # GET /post374s/new.xml
  def new
    @post374 = Post374.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post374 }
    end
  end

  # GET /post374s/1/edit
  def edit
    @post374 = Post374.find(params[:id])
  end

  # POST /post374s
  # POST /post374s.xml
  def create
    @post374 = Post374.new(params[:post374])

    respond_to do |format|
      if @post374.save
        format.html { redirect_to(@post374, :notice => 'Post374 was successfully created.') }
        format.xml  { render :xml => @post374, :status => :created, :location => @post374 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post374.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post374s/1
  # PUT /post374s/1.xml
  def update
    @post374 = Post374.find(params[:id])

    respond_to do |format|
      if @post374.update_attributes(params[:post374])
        format.html { redirect_to(@post374, :notice => 'Post374 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post374.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post374s/1
  # DELETE /post374s/1.xml
  def destroy
    @post374 = Post374.find(params[:id])
    @post374.destroy

    respond_to do |format|
      format.html { redirect_to(post374s_url) }
      format.xml  { head :ok }
    end
  end
end
