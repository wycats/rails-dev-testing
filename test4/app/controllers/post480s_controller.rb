class Post480sController < ApplicationController
  # GET /post480s
  # GET /post480s.xml
  def index
    @post480s = Post480.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post480s }
    end
  end

  # GET /post480s/1
  # GET /post480s/1.xml
  def show
    @post480 = Post480.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post480 }
    end
  end

  # GET /post480s/new
  # GET /post480s/new.xml
  def new
    @post480 = Post480.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post480 }
    end
  end

  # GET /post480s/1/edit
  def edit
    @post480 = Post480.find(params[:id])
  end

  # POST /post480s
  # POST /post480s.xml
  def create
    @post480 = Post480.new(params[:post480])

    respond_to do |format|
      if @post480.save
        format.html { redirect_to(@post480, :notice => 'Post480 was successfully created.') }
        format.xml  { render :xml => @post480, :status => :created, :location => @post480 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post480.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post480s/1
  # PUT /post480s/1.xml
  def update
    @post480 = Post480.find(params[:id])

    respond_to do |format|
      if @post480.update_attributes(params[:post480])
        format.html { redirect_to(@post480, :notice => 'Post480 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post480.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post480s/1
  # DELETE /post480s/1.xml
  def destroy
    @post480 = Post480.find(params[:id])
    @post480.destroy

    respond_to do |format|
      format.html { redirect_to(post480s_url) }
      format.xml  { head :ok }
    end
  end
end
