class Post288sController < ApplicationController
  # GET /post288s
  # GET /post288s.xml
  def index
    @post288s = Post288.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post288s }
    end
  end

  # GET /post288s/1
  # GET /post288s/1.xml
  def show
    @post288 = Post288.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post288 }
    end
  end

  # GET /post288s/new
  # GET /post288s/new.xml
  def new
    @post288 = Post288.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post288 }
    end
  end

  # GET /post288s/1/edit
  def edit
    @post288 = Post288.find(params[:id])
  end

  # POST /post288s
  # POST /post288s.xml
  def create
    @post288 = Post288.new(params[:post288])

    respond_to do |format|
      if @post288.save
        format.html { redirect_to(@post288, :notice => 'Post288 was successfully created.') }
        format.xml  { render :xml => @post288, :status => :created, :location => @post288 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post288.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post288s/1
  # PUT /post288s/1.xml
  def update
    @post288 = Post288.find(params[:id])

    respond_to do |format|
      if @post288.update_attributes(params[:post288])
        format.html { redirect_to(@post288, :notice => 'Post288 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post288.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post288s/1
  # DELETE /post288s/1.xml
  def destroy
    @post288 = Post288.find(params[:id])
    @post288.destroy

    respond_to do |format|
      format.html { redirect_to(post288s_url) }
      format.xml  { head :ok }
    end
  end
end
