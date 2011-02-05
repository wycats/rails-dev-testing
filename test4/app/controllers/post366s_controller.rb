class Post366sController < ApplicationController
  # GET /post366s
  # GET /post366s.xml
  def index
    @post366s = Post366.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post366s }
    end
  end

  # GET /post366s/1
  # GET /post366s/1.xml
  def show
    @post366 = Post366.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post366 }
    end
  end

  # GET /post366s/new
  # GET /post366s/new.xml
  def new
    @post366 = Post366.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post366 }
    end
  end

  # GET /post366s/1/edit
  def edit
    @post366 = Post366.find(params[:id])
  end

  # POST /post366s
  # POST /post366s.xml
  def create
    @post366 = Post366.new(params[:post366])

    respond_to do |format|
      if @post366.save
        format.html { redirect_to(@post366, :notice => 'Post366 was successfully created.') }
        format.xml  { render :xml => @post366, :status => :created, :location => @post366 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post366.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post366s/1
  # PUT /post366s/1.xml
  def update
    @post366 = Post366.find(params[:id])

    respond_to do |format|
      if @post366.update_attributes(params[:post366])
        format.html { redirect_to(@post366, :notice => 'Post366 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post366.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post366s/1
  # DELETE /post366s/1.xml
  def destroy
    @post366 = Post366.find(params[:id])
    @post366.destroy

    respond_to do |format|
      format.html { redirect_to(post366s_url) }
      format.xml  { head :ok }
    end
  end
end
