class Post239sController < ApplicationController
  # GET /post239s
  # GET /post239s.xml
  def index
    @post239s = Post239.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post239s }
    end
  end

  # GET /post239s/1
  # GET /post239s/1.xml
  def show
    @post239 = Post239.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post239 }
    end
  end

  # GET /post239s/new
  # GET /post239s/new.xml
  def new
    @post239 = Post239.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post239 }
    end
  end

  # GET /post239s/1/edit
  def edit
    @post239 = Post239.find(params[:id])
  end

  # POST /post239s
  # POST /post239s.xml
  def create
    @post239 = Post239.new(params[:post239])

    respond_to do |format|
      if @post239.save
        format.html { redirect_to(@post239, :notice => 'Post239 was successfully created.') }
        format.xml  { render :xml => @post239, :status => :created, :location => @post239 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post239.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post239s/1
  # PUT /post239s/1.xml
  def update
    @post239 = Post239.find(params[:id])

    respond_to do |format|
      if @post239.update_attributes(params[:post239])
        format.html { redirect_to(@post239, :notice => 'Post239 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post239.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post239s/1
  # DELETE /post239s/1.xml
  def destroy
    @post239 = Post239.find(params[:id])
    @post239.destroy

    respond_to do |format|
      format.html { redirect_to(post239s_url) }
      format.xml  { head :ok }
    end
  end
end
