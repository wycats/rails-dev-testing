class Post49sController < ApplicationController
  # GET /post49s
  # GET /post49s.xml
  def index
    @post49s = Post49.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post49s }
    end
  end

  # GET /post49s/1
  # GET /post49s/1.xml
  def show
    @post49 = Post49.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post49 }
    end
  end

  # GET /post49s/new
  # GET /post49s/new.xml
  def new
    @post49 = Post49.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post49 }
    end
  end

  # GET /post49s/1/edit
  def edit
    @post49 = Post49.find(params[:id])
  end

  # POST /post49s
  # POST /post49s.xml
  def create
    @post49 = Post49.new(params[:post49])

    respond_to do |format|
      if @post49.save
        format.html { redirect_to(@post49, :notice => 'Post49 was successfully created.') }
        format.xml  { render :xml => @post49, :status => :created, :location => @post49 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post49.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post49s/1
  # PUT /post49s/1.xml
  def update
    @post49 = Post49.find(params[:id])

    respond_to do |format|
      if @post49.update_attributes(params[:post49])
        format.html { redirect_to(@post49, :notice => 'Post49 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post49.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post49s/1
  # DELETE /post49s/1.xml
  def destroy
    @post49 = Post49.find(params[:id])
    @post49.destroy

    respond_to do |format|
      format.html { redirect_to(post49s_url) }
      format.xml  { head :ok }
    end
  end
end
