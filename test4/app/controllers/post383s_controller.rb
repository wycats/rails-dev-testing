class Post383sController < ApplicationController
  # GET /post383s
  # GET /post383s.xml
  def index
    @post383s = Post383.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post383s }
    end
  end

  # GET /post383s/1
  # GET /post383s/1.xml
  def show
    @post383 = Post383.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post383 }
    end
  end

  # GET /post383s/new
  # GET /post383s/new.xml
  def new
    @post383 = Post383.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post383 }
    end
  end

  # GET /post383s/1/edit
  def edit
    @post383 = Post383.find(params[:id])
  end

  # POST /post383s
  # POST /post383s.xml
  def create
    @post383 = Post383.new(params[:post383])

    respond_to do |format|
      if @post383.save
        format.html { redirect_to(@post383, :notice => 'Post383 was successfully created.') }
        format.xml  { render :xml => @post383, :status => :created, :location => @post383 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post383.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post383s/1
  # PUT /post383s/1.xml
  def update
    @post383 = Post383.find(params[:id])

    respond_to do |format|
      if @post383.update_attributes(params[:post383])
        format.html { redirect_to(@post383, :notice => 'Post383 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post383.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post383s/1
  # DELETE /post383s/1.xml
  def destroy
    @post383 = Post383.find(params[:id])
    @post383.destroy

    respond_to do |format|
      format.html { redirect_to(post383s_url) }
      format.xml  { head :ok }
    end
  end
end
