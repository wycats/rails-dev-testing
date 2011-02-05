class Post301sController < ApplicationController
  # GET /post301s
  # GET /post301s.xml
  def index
    @post301s = Post301.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post301s }
    end
  end

  # GET /post301s/1
  # GET /post301s/1.xml
  def show
    @post301 = Post301.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post301 }
    end
  end

  # GET /post301s/new
  # GET /post301s/new.xml
  def new
    @post301 = Post301.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post301 }
    end
  end

  # GET /post301s/1/edit
  def edit
    @post301 = Post301.find(params[:id])
  end

  # POST /post301s
  # POST /post301s.xml
  def create
    @post301 = Post301.new(params[:post301])

    respond_to do |format|
      if @post301.save
        format.html { redirect_to(@post301, :notice => 'Post301 was successfully created.') }
        format.xml  { render :xml => @post301, :status => :created, :location => @post301 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post301.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post301s/1
  # PUT /post301s/1.xml
  def update
    @post301 = Post301.find(params[:id])

    respond_to do |format|
      if @post301.update_attributes(params[:post301])
        format.html { redirect_to(@post301, :notice => 'Post301 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post301.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post301s/1
  # DELETE /post301s/1.xml
  def destroy
    @post301 = Post301.find(params[:id])
    @post301.destroy

    respond_to do |format|
      format.html { redirect_to(post301s_url) }
      format.xml  { head :ok }
    end
  end
end
