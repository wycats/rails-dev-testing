class Post421sController < ApplicationController
  # GET /post421s
  # GET /post421s.xml
  def index
    @post421s = Post421.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post421s }
    end
  end

  # GET /post421s/1
  # GET /post421s/1.xml
  def show
    @post421 = Post421.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post421 }
    end
  end

  # GET /post421s/new
  # GET /post421s/new.xml
  def new
    @post421 = Post421.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post421 }
    end
  end

  # GET /post421s/1/edit
  def edit
    @post421 = Post421.find(params[:id])
  end

  # POST /post421s
  # POST /post421s.xml
  def create
    @post421 = Post421.new(params[:post421])

    respond_to do |format|
      if @post421.save
        format.html { redirect_to(@post421, :notice => 'Post421 was successfully created.') }
        format.xml  { render :xml => @post421, :status => :created, :location => @post421 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post421.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post421s/1
  # PUT /post421s/1.xml
  def update
    @post421 = Post421.find(params[:id])

    respond_to do |format|
      if @post421.update_attributes(params[:post421])
        format.html { redirect_to(@post421, :notice => 'Post421 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post421.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post421s/1
  # DELETE /post421s/1.xml
  def destroy
    @post421 = Post421.find(params[:id])
    @post421.destroy

    respond_to do |format|
      format.html { redirect_to(post421s_url) }
      format.xml  { head :ok }
    end
  end
end
