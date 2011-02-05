class Post123sController < ApplicationController
  # GET /post123s
  # GET /post123s.xml
  def index
    @post123s = Post123.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post123s }
    end
  end

  # GET /post123s/1
  # GET /post123s/1.xml
  def show
    @post123 = Post123.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post123 }
    end
  end

  # GET /post123s/new
  # GET /post123s/new.xml
  def new
    @post123 = Post123.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post123 }
    end
  end

  # GET /post123s/1/edit
  def edit
    @post123 = Post123.find(params[:id])
  end

  # POST /post123s
  # POST /post123s.xml
  def create
    @post123 = Post123.new(params[:post123])

    respond_to do |format|
      if @post123.save
        format.html { redirect_to(@post123, :notice => 'Post123 was successfully created.') }
        format.xml  { render :xml => @post123, :status => :created, :location => @post123 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post123.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post123s/1
  # PUT /post123s/1.xml
  def update
    @post123 = Post123.find(params[:id])

    respond_to do |format|
      if @post123.update_attributes(params[:post123])
        format.html { redirect_to(@post123, :notice => 'Post123 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post123.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post123s/1
  # DELETE /post123s/1.xml
  def destroy
    @post123 = Post123.find(params[:id])
    @post123.destroy

    respond_to do |format|
      format.html { redirect_to(post123s_url) }
      format.xml  { head :ok }
    end
  end
end
