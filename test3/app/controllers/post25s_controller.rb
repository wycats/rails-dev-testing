class Post25sController < ApplicationController
  # GET /post25s
  # GET /post25s.xml
  def index
    @post25s = Post25.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post25s }
    end
  end

  # GET /post25s/1
  # GET /post25s/1.xml
  def show
    @post25 = Post25.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post25 }
    end
  end

  # GET /post25s/new
  # GET /post25s/new.xml
  def new
    @post25 = Post25.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post25 }
    end
  end

  # GET /post25s/1/edit
  def edit
    @post25 = Post25.find(params[:id])
  end

  # POST /post25s
  # POST /post25s.xml
  def create
    @post25 = Post25.new(params[:post25])

    respond_to do |format|
      if @post25.save
        format.html { redirect_to(@post25, :notice => 'Post25 was successfully created.') }
        format.xml  { render :xml => @post25, :status => :created, :location => @post25 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post25.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post25s/1
  # PUT /post25s/1.xml
  def update
    @post25 = Post25.find(params[:id])

    respond_to do |format|
      if @post25.update_attributes(params[:post25])
        format.html { redirect_to(@post25, :notice => 'Post25 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post25.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post25s/1
  # DELETE /post25s/1.xml
  def destroy
    @post25 = Post25.find(params[:id])
    @post25.destroy

    respond_to do |format|
      format.html { redirect_to(post25s_url) }
      format.xml  { head :ok }
    end
  end
end
