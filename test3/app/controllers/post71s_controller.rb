class Post71sController < ApplicationController
  # GET /post71s
  # GET /post71s.xml
  def index
    @post71s = Post71.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post71s }
    end
  end

  # GET /post71s/1
  # GET /post71s/1.xml
  def show
    @post71 = Post71.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post71 }
    end
  end

  # GET /post71s/new
  # GET /post71s/new.xml
  def new
    @post71 = Post71.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post71 }
    end
  end

  # GET /post71s/1/edit
  def edit
    @post71 = Post71.find(params[:id])
  end

  # POST /post71s
  # POST /post71s.xml
  def create
    @post71 = Post71.new(params[:post71])

    respond_to do |format|
      if @post71.save
        format.html { redirect_to(@post71, :notice => 'Post71 was successfully created.') }
        format.xml  { render :xml => @post71, :status => :created, :location => @post71 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post71.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post71s/1
  # PUT /post71s/1.xml
  def update
    @post71 = Post71.find(params[:id])

    respond_to do |format|
      if @post71.update_attributes(params[:post71])
        format.html { redirect_to(@post71, :notice => 'Post71 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post71.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post71s/1
  # DELETE /post71s/1.xml
  def destroy
    @post71 = Post71.find(params[:id])
    @post71.destroy

    respond_to do |format|
      format.html { redirect_to(post71s_url) }
      format.xml  { head :ok }
    end
  end
end
