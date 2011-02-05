class Post275sController < ApplicationController
  # GET /post275s
  # GET /post275s.xml
  def index
    @post275s = Post275.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post275s }
    end
  end

  # GET /post275s/1
  # GET /post275s/1.xml
  def show
    @post275 = Post275.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post275 }
    end
  end

  # GET /post275s/new
  # GET /post275s/new.xml
  def new
    @post275 = Post275.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post275 }
    end
  end

  # GET /post275s/1/edit
  def edit
    @post275 = Post275.find(params[:id])
  end

  # POST /post275s
  # POST /post275s.xml
  def create
    @post275 = Post275.new(params[:post275])

    respond_to do |format|
      if @post275.save
        format.html { redirect_to(@post275, :notice => 'Post275 was successfully created.') }
        format.xml  { render :xml => @post275, :status => :created, :location => @post275 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post275.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post275s/1
  # PUT /post275s/1.xml
  def update
    @post275 = Post275.find(params[:id])

    respond_to do |format|
      if @post275.update_attributes(params[:post275])
        format.html { redirect_to(@post275, :notice => 'Post275 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post275.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post275s/1
  # DELETE /post275s/1.xml
  def destroy
    @post275 = Post275.find(params[:id])
    @post275.destroy

    respond_to do |format|
      format.html { redirect_to(post275s_url) }
      format.xml  { head :ok }
    end
  end
end
