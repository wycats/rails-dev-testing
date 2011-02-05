class Post346sController < ApplicationController
  # GET /post346s
  # GET /post346s.xml
  def index
    @post346s = Post346.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post346s }
    end
  end

  # GET /post346s/1
  # GET /post346s/1.xml
  def show
    @post346 = Post346.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post346 }
    end
  end

  # GET /post346s/new
  # GET /post346s/new.xml
  def new
    @post346 = Post346.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post346 }
    end
  end

  # GET /post346s/1/edit
  def edit
    @post346 = Post346.find(params[:id])
  end

  # POST /post346s
  # POST /post346s.xml
  def create
    @post346 = Post346.new(params[:post346])

    respond_to do |format|
      if @post346.save
        format.html { redirect_to(@post346, :notice => 'Post346 was successfully created.') }
        format.xml  { render :xml => @post346, :status => :created, :location => @post346 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post346.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post346s/1
  # PUT /post346s/1.xml
  def update
    @post346 = Post346.find(params[:id])

    respond_to do |format|
      if @post346.update_attributes(params[:post346])
        format.html { redirect_to(@post346, :notice => 'Post346 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post346.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post346s/1
  # DELETE /post346s/1.xml
  def destroy
    @post346 = Post346.find(params[:id])
    @post346.destroy

    respond_to do |format|
      format.html { redirect_to(post346s_url) }
      format.xml  { head :ok }
    end
  end
end
