class Post177sController < ApplicationController
  # GET /post177s
  # GET /post177s.xml
  def index
    @post177s = Post177.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post177s }
    end
  end

  # GET /post177s/1
  # GET /post177s/1.xml
  def show
    @post177 = Post177.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post177 }
    end
  end

  # GET /post177s/new
  # GET /post177s/new.xml
  def new
    @post177 = Post177.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post177 }
    end
  end

  # GET /post177s/1/edit
  def edit
    @post177 = Post177.find(params[:id])
  end

  # POST /post177s
  # POST /post177s.xml
  def create
    @post177 = Post177.new(params[:post177])

    respond_to do |format|
      if @post177.save
        format.html { redirect_to(@post177, :notice => 'Post177 was successfully created.') }
        format.xml  { render :xml => @post177, :status => :created, :location => @post177 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post177.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post177s/1
  # PUT /post177s/1.xml
  def update
    @post177 = Post177.find(params[:id])

    respond_to do |format|
      if @post177.update_attributes(params[:post177])
        format.html { redirect_to(@post177, :notice => 'Post177 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post177.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post177s/1
  # DELETE /post177s/1.xml
  def destroy
    @post177 = Post177.find(params[:id])
    @post177.destroy

    respond_to do |format|
      format.html { redirect_to(post177s_url) }
      format.xml  { head :ok }
    end
  end
end
