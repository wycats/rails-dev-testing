class Post96sController < ApplicationController
  # GET /post96s
  # GET /post96s.xml
  def index
    @post96s = Post96.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post96s }
    end
  end

  # GET /post96s/1
  # GET /post96s/1.xml
  def show
    @post96 = Post96.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post96 }
    end
  end

  # GET /post96s/new
  # GET /post96s/new.xml
  def new
    @post96 = Post96.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post96 }
    end
  end

  # GET /post96s/1/edit
  def edit
    @post96 = Post96.find(params[:id])
  end

  # POST /post96s
  # POST /post96s.xml
  def create
    @post96 = Post96.new(params[:post96])

    respond_to do |format|
      if @post96.save
        format.html { redirect_to(@post96, :notice => 'Post96 was successfully created.') }
        format.xml  { render :xml => @post96, :status => :created, :location => @post96 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post96.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post96s/1
  # PUT /post96s/1.xml
  def update
    @post96 = Post96.find(params[:id])

    respond_to do |format|
      if @post96.update_attributes(params[:post96])
        format.html { redirect_to(@post96, :notice => 'Post96 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post96.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post96s/1
  # DELETE /post96s/1.xml
  def destroy
    @post96 = Post96.find(params[:id])
    @post96.destroy

    respond_to do |format|
      format.html { redirect_to(post96s_url) }
      format.xml  { head :ok }
    end
  end
end
