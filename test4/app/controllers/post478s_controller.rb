class Post478sController < ApplicationController
  # GET /post478s
  # GET /post478s.xml
  def index
    @post478s = Post478.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post478s }
    end
  end

  # GET /post478s/1
  # GET /post478s/1.xml
  def show
    @post478 = Post478.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post478 }
    end
  end

  # GET /post478s/new
  # GET /post478s/new.xml
  def new
    @post478 = Post478.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post478 }
    end
  end

  # GET /post478s/1/edit
  def edit
    @post478 = Post478.find(params[:id])
  end

  # POST /post478s
  # POST /post478s.xml
  def create
    @post478 = Post478.new(params[:post478])

    respond_to do |format|
      if @post478.save
        format.html { redirect_to(@post478, :notice => 'Post478 was successfully created.') }
        format.xml  { render :xml => @post478, :status => :created, :location => @post478 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post478.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post478s/1
  # PUT /post478s/1.xml
  def update
    @post478 = Post478.find(params[:id])

    respond_to do |format|
      if @post478.update_attributes(params[:post478])
        format.html { redirect_to(@post478, :notice => 'Post478 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post478.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post478s/1
  # DELETE /post478s/1.xml
  def destroy
    @post478 = Post478.find(params[:id])
    @post478.destroy

    respond_to do |format|
      format.html { redirect_to(post478s_url) }
      format.xml  { head :ok }
    end
  end
end
