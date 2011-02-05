class Post481sController < ApplicationController
  # GET /post481s
  # GET /post481s.xml
  def index
    @post481s = Post481.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post481s }
    end
  end

  # GET /post481s/1
  # GET /post481s/1.xml
  def show
    @post481 = Post481.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post481 }
    end
  end

  # GET /post481s/new
  # GET /post481s/new.xml
  def new
    @post481 = Post481.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post481 }
    end
  end

  # GET /post481s/1/edit
  def edit
    @post481 = Post481.find(params[:id])
  end

  # POST /post481s
  # POST /post481s.xml
  def create
    @post481 = Post481.new(params[:post481])

    respond_to do |format|
      if @post481.save
        format.html { redirect_to(@post481, :notice => 'Post481 was successfully created.') }
        format.xml  { render :xml => @post481, :status => :created, :location => @post481 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post481.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post481s/1
  # PUT /post481s/1.xml
  def update
    @post481 = Post481.find(params[:id])

    respond_to do |format|
      if @post481.update_attributes(params[:post481])
        format.html { redirect_to(@post481, :notice => 'Post481 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post481.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post481s/1
  # DELETE /post481s/1.xml
  def destroy
    @post481 = Post481.find(params[:id])
    @post481.destroy

    respond_to do |format|
      format.html { redirect_to(post481s_url) }
      format.xml  { head :ok }
    end
  end
end
