class Post395sController < ApplicationController
  # GET /post395s
  # GET /post395s.xml
  def index
    @post395s = Post395.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post395s }
    end
  end

  # GET /post395s/1
  # GET /post395s/1.xml
  def show
    @post395 = Post395.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post395 }
    end
  end

  # GET /post395s/new
  # GET /post395s/new.xml
  def new
    @post395 = Post395.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post395 }
    end
  end

  # GET /post395s/1/edit
  def edit
    @post395 = Post395.find(params[:id])
  end

  # POST /post395s
  # POST /post395s.xml
  def create
    @post395 = Post395.new(params[:post395])

    respond_to do |format|
      if @post395.save
        format.html { redirect_to(@post395, :notice => 'Post395 was successfully created.') }
        format.xml  { render :xml => @post395, :status => :created, :location => @post395 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post395.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post395s/1
  # PUT /post395s/1.xml
  def update
    @post395 = Post395.find(params[:id])

    respond_to do |format|
      if @post395.update_attributes(params[:post395])
        format.html { redirect_to(@post395, :notice => 'Post395 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post395.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post395s/1
  # DELETE /post395s/1.xml
  def destroy
    @post395 = Post395.find(params[:id])
    @post395.destroy

    respond_to do |format|
      format.html { redirect_to(post395s_url) }
      format.xml  { head :ok }
    end
  end
end
