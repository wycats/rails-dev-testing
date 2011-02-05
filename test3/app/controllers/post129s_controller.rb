class Post129sController < ApplicationController
  # GET /post129s
  # GET /post129s.xml
  def index
    @post129s = Post129.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post129s }
    end
  end

  # GET /post129s/1
  # GET /post129s/1.xml
  def show
    @post129 = Post129.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post129 }
    end
  end

  # GET /post129s/new
  # GET /post129s/new.xml
  def new
    @post129 = Post129.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post129 }
    end
  end

  # GET /post129s/1/edit
  def edit
    @post129 = Post129.find(params[:id])
  end

  # POST /post129s
  # POST /post129s.xml
  def create
    @post129 = Post129.new(params[:post129])

    respond_to do |format|
      if @post129.save
        format.html { redirect_to(@post129, :notice => 'Post129 was successfully created.') }
        format.xml  { render :xml => @post129, :status => :created, :location => @post129 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post129.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post129s/1
  # PUT /post129s/1.xml
  def update
    @post129 = Post129.find(params[:id])

    respond_to do |format|
      if @post129.update_attributes(params[:post129])
        format.html { redirect_to(@post129, :notice => 'Post129 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post129.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post129s/1
  # DELETE /post129s/1.xml
  def destroy
    @post129 = Post129.find(params[:id])
    @post129.destroy

    respond_to do |format|
      format.html { redirect_to(post129s_url) }
      format.xml  { head :ok }
    end
  end
end
