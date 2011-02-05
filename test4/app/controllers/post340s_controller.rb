class Post340sController < ApplicationController
  # GET /post340s
  # GET /post340s.xml
  def index
    @post340s = Post340.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post340s }
    end
  end

  # GET /post340s/1
  # GET /post340s/1.xml
  def show
    @post340 = Post340.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post340 }
    end
  end

  # GET /post340s/new
  # GET /post340s/new.xml
  def new
    @post340 = Post340.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post340 }
    end
  end

  # GET /post340s/1/edit
  def edit
    @post340 = Post340.find(params[:id])
  end

  # POST /post340s
  # POST /post340s.xml
  def create
    @post340 = Post340.new(params[:post340])

    respond_to do |format|
      if @post340.save
        format.html { redirect_to(@post340, :notice => 'Post340 was successfully created.') }
        format.xml  { render :xml => @post340, :status => :created, :location => @post340 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post340.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post340s/1
  # PUT /post340s/1.xml
  def update
    @post340 = Post340.find(params[:id])

    respond_to do |format|
      if @post340.update_attributes(params[:post340])
        format.html { redirect_to(@post340, :notice => 'Post340 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post340.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post340s/1
  # DELETE /post340s/1.xml
  def destroy
    @post340 = Post340.find(params[:id])
    @post340.destroy

    respond_to do |format|
      format.html { redirect_to(post340s_url) }
      format.xml  { head :ok }
    end
  end
end
