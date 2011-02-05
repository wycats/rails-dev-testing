class Post167sController < ApplicationController
  # GET /post167s
  # GET /post167s.xml
  def index
    @post167s = Post167.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post167s }
    end
  end

  # GET /post167s/1
  # GET /post167s/1.xml
  def show
    @post167 = Post167.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post167 }
    end
  end

  # GET /post167s/new
  # GET /post167s/new.xml
  def new
    @post167 = Post167.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post167 }
    end
  end

  # GET /post167s/1/edit
  def edit
    @post167 = Post167.find(params[:id])
  end

  # POST /post167s
  # POST /post167s.xml
  def create
    @post167 = Post167.new(params[:post167])

    respond_to do |format|
      if @post167.save
        format.html { redirect_to(@post167, :notice => 'Post167 was successfully created.') }
        format.xml  { render :xml => @post167, :status => :created, :location => @post167 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post167.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post167s/1
  # PUT /post167s/1.xml
  def update
    @post167 = Post167.find(params[:id])

    respond_to do |format|
      if @post167.update_attributes(params[:post167])
        format.html { redirect_to(@post167, :notice => 'Post167 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post167.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post167s/1
  # DELETE /post167s/1.xml
  def destroy
    @post167 = Post167.find(params[:id])
    @post167.destroy

    respond_to do |format|
      format.html { redirect_to(post167s_url) }
      format.xml  { head :ok }
    end
  end
end
