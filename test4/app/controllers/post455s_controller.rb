class Post455sController < ApplicationController
  # GET /post455s
  # GET /post455s.xml
  def index
    @post455s = Post455.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post455s }
    end
  end

  # GET /post455s/1
  # GET /post455s/1.xml
  def show
    @post455 = Post455.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post455 }
    end
  end

  # GET /post455s/new
  # GET /post455s/new.xml
  def new
    @post455 = Post455.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post455 }
    end
  end

  # GET /post455s/1/edit
  def edit
    @post455 = Post455.find(params[:id])
  end

  # POST /post455s
  # POST /post455s.xml
  def create
    @post455 = Post455.new(params[:post455])

    respond_to do |format|
      if @post455.save
        format.html { redirect_to(@post455, :notice => 'Post455 was successfully created.') }
        format.xml  { render :xml => @post455, :status => :created, :location => @post455 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post455.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post455s/1
  # PUT /post455s/1.xml
  def update
    @post455 = Post455.find(params[:id])

    respond_to do |format|
      if @post455.update_attributes(params[:post455])
        format.html { redirect_to(@post455, :notice => 'Post455 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post455.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post455s/1
  # DELETE /post455s/1.xml
  def destroy
    @post455 = Post455.find(params[:id])
    @post455.destroy

    respond_to do |format|
      format.html { redirect_to(post455s_url) }
      format.xml  { head :ok }
    end
  end
end
