class Post128sController < ApplicationController
  # GET /post128s
  # GET /post128s.xml
  def index
    @post128s = Post128.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post128s }
    end
  end

  # GET /post128s/1
  # GET /post128s/1.xml
  def show
    @post128 = Post128.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post128 }
    end
  end

  # GET /post128s/new
  # GET /post128s/new.xml
  def new
    @post128 = Post128.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post128 }
    end
  end

  # GET /post128s/1/edit
  def edit
    @post128 = Post128.find(params[:id])
  end

  # POST /post128s
  # POST /post128s.xml
  def create
    @post128 = Post128.new(params[:post128])

    respond_to do |format|
      if @post128.save
        format.html { redirect_to(@post128, :notice => 'Post128 was successfully created.') }
        format.xml  { render :xml => @post128, :status => :created, :location => @post128 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post128.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post128s/1
  # PUT /post128s/1.xml
  def update
    @post128 = Post128.find(params[:id])

    respond_to do |format|
      if @post128.update_attributes(params[:post128])
        format.html { redirect_to(@post128, :notice => 'Post128 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post128.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post128s/1
  # DELETE /post128s/1.xml
  def destroy
    @post128 = Post128.find(params[:id])
    @post128.destroy

    respond_to do |format|
      format.html { redirect_to(post128s_url) }
      format.xml  { head :ok }
    end
  end
end
