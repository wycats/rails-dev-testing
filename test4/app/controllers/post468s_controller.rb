class Post468sController < ApplicationController
  # GET /post468s
  # GET /post468s.xml
  def index
    @post468s = Post468.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post468s }
    end
  end

  # GET /post468s/1
  # GET /post468s/1.xml
  def show
    @post468 = Post468.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post468 }
    end
  end

  # GET /post468s/new
  # GET /post468s/new.xml
  def new
    @post468 = Post468.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post468 }
    end
  end

  # GET /post468s/1/edit
  def edit
    @post468 = Post468.find(params[:id])
  end

  # POST /post468s
  # POST /post468s.xml
  def create
    @post468 = Post468.new(params[:post468])

    respond_to do |format|
      if @post468.save
        format.html { redirect_to(@post468, :notice => 'Post468 was successfully created.') }
        format.xml  { render :xml => @post468, :status => :created, :location => @post468 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post468.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post468s/1
  # PUT /post468s/1.xml
  def update
    @post468 = Post468.find(params[:id])

    respond_to do |format|
      if @post468.update_attributes(params[:post468])
        format.html { redirect_to(@post468, :notice => 'Post468 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post468.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post468s/1
  # DELETE /post468s/1.xml
  def destroy
    @post468 = Post468.find(params[:id])
    @post468.destroy

    respond_to do |format|
      format.html { redirect_to(post468s_url) }
      format.xml  { head :ok }
    end
  end
end
