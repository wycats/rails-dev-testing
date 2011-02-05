class Post227sController < ApplicationController
  # GET /post227s
  # GET /post227s.xml
  def index
    @post227s = Post227.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post227s }
    end
  end

  # GET /post227s/1
  # GET /post227s/1.xml
  def show
    @post227 = Post227.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post227 }
    end
  end

  # GET /post227s/new
  # GET /post227s/new.xml
  def new
    @post227 = Post227.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post227 }
    end
  end

  # GET /post227s/1/edit
  def edit
    @post227 = Post227.find(params[:id])
  end

  # POST /post227s
  # POST /post227s.xml
  def create
    @post227 = Post227.new(params[:post227])

    respond_to do |format|
      if @post227.save
        format.html { redirect_to(@post227, :notice => 'Post227 was successfully created.') }
        format.xml  { render :xml => @post227, :status => :created, :location => @post227 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post227.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post227s/1
  # PUT /post227s/1.xml
  def update
    @post227 = Post227.find(params[:id])

    respond_to do |format|
      if @post227.update_attributes(params[:post227])
        format.html { redirect_to(@post227, :notice => 'Post227 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post227.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post227s/1
  # DELETE /post227s/1.xml
  def destroy
    @post227 = Post227.find(params[:id])
    @post227.destroy

    respond_to do |format|
      format.html { redirect_to(post227s_url) }
      format.xml  { head :ok }
    end
  end
end
