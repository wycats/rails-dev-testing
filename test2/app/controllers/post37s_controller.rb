class Post37sController < ApplicationController
  # GET /post37s
  # GET /post37s.xml
  def index
    @post37s = Post37.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post37s }
    end
  end

  # GET /post37s/1
  # GET /post37s/1.xml
  def show
    @post37 = Post37.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post37 }
    end
  end

  # GET /post37s/new
  # GET /post37s/new.xml
  def new
    @post37 = Post37.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post37 }
    end
  end

  # GET /post37s/1/edit
  def edit
    @post37 = Post37.find(params[:id])
  end

  # POST /post37s
  # POST /post37s.xml
  def create
    @post37 = Post37.new(params[:post37])

    respond_to do |format|
      if @post37.save
        format.html { redirect_to(@post37, :notice => 'Post37 was successfully created.') }
        format.xml  { render :xml => @post37, :status => :created, :location => @post37 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post37.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post37s/1
  # PUT /post37s/1.xml
  def update
    @post37 = Post37.find(params[:id])

    respond_to do |format|
      if @post37.update_attributes(params[:post37])
        format.html { redirect_to(@post37, :notice => 'Post37 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post37.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post37s/1
  # DELETE /post37s/1.xml
  def destroy
    @post37 = Post37.find(params[:id])
    @post37.destroy

    respond_to do |format|
      format.html { redirect_to(post37s_url) }
      format.xml  { head :ok }
    end
  end
end
