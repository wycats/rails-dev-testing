class Post319sController < ApplicationController
  # GET /post319s
  # GET /post319s.xml
  def index
    @post319s = Post319.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post319s }
    end
  end

  # GET /post319s/1
  # GET /post319s/1.xml
  def show
    @post319 = Post319.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post319 }
    end
  end

  # GET /post319s/new
  # GET /post319s/new.xml
  def new
    @post319 = Post319.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post319 }
    end
  end

  # GET /post319s/1/edit
  def edit
    @post319 = Post319.find(params[:id])
  end

  # POST /post319s
  # POST /post319s.xml
  def create
    @post319 = Post319.new(params[:post319])

    respond_to do |format|
      if @post319.save
        format.html { redirect_to(@post319, :notice => 'Post319 was successfully created.') }
        format.xml  { render :xml => @post319, :status => :created, :location => @post319 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post319.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post319s/1
  # PUT /post319s/1.xml
  def update
    @post319 = Post319.find(params[:id])

    respond_to do |format|
      if @post319.update_attributes(params[:post319])
        format.html { redirect_to(@post319, :notice => 'Post319 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post319.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post319s/1
  # DELETE /post319s/1.xml
  def destroy
    @post319 = Post319.find(params[:id])
    @post319.destroy

    respond_to do |format|
      format.html { redirect_to(post319s_url) }
      format.xml  { head :ok }
    end
  end
end
