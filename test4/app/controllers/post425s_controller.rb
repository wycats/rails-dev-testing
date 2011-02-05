class Post425sController < ApplicationController
  # GET /post425s
  # GET /post425s.xml
  def index
    @post425s = Post425.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post425s }
    end
  end

  # GET /post425s/1
  # GET /post425s/1.xml
  def show
    @post425 = Post425.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post425 }
    end
  end

  # GET /post425s/new
  # GET /post425s/new.xml
  def new
    @post425 = Post425.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post425 }
    end
  end

  # GET /post425s/1/edit
  def edit
    @post425 = Post425.find(params[:id])
  end

  # POST /post425s
  # POST /post425s.xml
  def create
    @post425 = Post425.new(params[:post425])

    respond_to do |format|
      if @post425.save
        format.html { redirect_to(@post425, :notice => 'Post425 was successfully created.') }
        format.xml  { render :xml => @post425, :status => :created, :location => @post425 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post425.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post425s/1
  # PUT /post425s/1.xml
  def update
    @post425 = Post425.find(params[:id])

    respond_to do |format|
      if @post425.update_attributes(params[:post425])
        format.html { redirect_to(@post425, :notice => 'Post425 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post425.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post425s/1
  # DELETE /post425s/1.xml
  def destroy
    @post425 = Post425.find(params[:id])
    @post425.destroy

    respond_to do |format|
      format.html { redirect_to(post425s_url) }
      format.xml  { head :ok }
    end
  end
end
