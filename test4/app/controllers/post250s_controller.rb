class Post250sController < ApplicationController
  # GET /post250s
  # GET /post250s.xml
  def index
    @post250s = Post250.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post250s }
    end
  end

  # GET /post250s/1
  # GET /post250s/1.xml
  def show
    @post250 = Post250.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post250 }
    end
  end

  # GET /post250s/new
  # GET /post250s/new.xml
  def new
    @post250 = Post250.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post250 }
    end
  end

  # GET /post250s/1/edit
  def edit
    @post250 = Post250.find(params[:id])
  end

  # POST /post250s
  # POST /post250s.xml
  def create
    @post250 = Post250.new(params[:post250])

    respond_to do |format|
      if @post250.save
        format.html { redirect_to(@post250, :notice => 'Post250 was successfully created.') }
        format.xml  { render :xml => @post250, :status => :created, :location => @post250 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post250.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post250s/1
  # PUT /post250s/1.xml
  def update
    @post250 = Post250.find(params[:id])

    respond_to do |format|
      if @post250.update_attributes(params[:post250])
        format.html { redirect_to(@post250, :notice => 'Post250 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post250.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post250s/1
  # DELETE /post250s/1.xml
  def destroy
    @post250 = Post250.find(params[:id])
    @post250.destroy

    respond_to do |format|
      format.html { redirect_to(post250s_url) }
      format.xml  { head :ok }
    end
  end
end
