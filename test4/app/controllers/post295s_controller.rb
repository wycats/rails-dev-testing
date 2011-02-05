class Post295sController < ApplicationController
  # GET /post295s
  # GET /post295s.xml
  def index
    @post295s = Post295.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post295s }
    end
  end

  # GET /post295s/1
  # GET /post295s/1.xml
  def show
    @post295 = Post295.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post295 }
    end
  end

  # GET /post295s/new
  # GET /post295s/new.xml
  def new
    @post295 = Post295.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post295 }
    end
  end

  # GET /post295s/1/edit
  def edit
    @post295 = Post295.find(params[:id])
  end

  # POST /post295s
  # POST /post295s.xml
  def create
    @post295 = Post295.new(params[:post295])

    respond_to do |format|
      if @post295.save
        format.html { redirect_to(@post295, :notice => 'Post295 was successfully created.') }
        format.xml  { render :xml => @post295, :status => :created, :location => @post295 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post295.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post295s/1
  # PUT /post295s/1.xml
  def update
    @post295 = Post295.find(params[:id])

    respond_to do |format|
      if @post295.update_attributes(params[:post295])
        format.html { redirect_to(@post295, :notice => 'Post295 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post295.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post295s/1
  # DELETE /post295s/1.xml
  def destroy
    @post295 = Post295.find(params[:id])
    @post295.destroy

    respond_to do |format|
      format.html { redirect_to(post295s_url) }
      format.xml  { head :ok }
    end
  end
end
