class Post52sController < ApplicationController
  # GET /post52s
  # GET /post52s.xml
  def index
    @post52s = Post52.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post52s }
    end
  end

  # GET /post52s/1
  # GET /post52s/1.xml
  def show
    @post52 = Post52.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post52 }
    end
  end

  # GET /post52s/new
  # GET /post52s/new.xml
  def new
    @post52 = Post52.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post52 }
    end
  end

  # GET /post52s/1/edit
  def edit
    @post52 = Post52.find(params[:id])
  end

  # POST /post52s
  # POST /post52s.xml
  def create
    @post52 = Post52.new(params[:post52])

    respond_to do |format|
      if @post52.save
        format.html { redirect_to(@post52, :notice => 'Post52 was successfully created.') }
        format.xml  { render :xml => @post52, :status => :created, :location => @post52 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post52.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post52s/1
  # PUT /post52s/1.xml
  def update
    @post52 = Post52.find(params[:id])

    respond_to do |format|
      if @post52.update_attributes(params[:post52])
        format.html { redirect_to(@post52, :notice => 'Post52 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post52.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post52s/1
  # DELETE /post52s/1.xml
  def destroy
    @post52 = Post52.find(params[:id])
    @post52.destroy

    respond_to do |format|
      format.html { redirect_to(post52s_url) }
      format.xml  { head :ok }
    end
  end
end
