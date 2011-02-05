class Post166sController < ApplicationController
  # GET /post166s
  # GET /post166s.xml
  def index
    @post166s = Post166.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post166s }
    end
  end

  # GET /post166s/1
  # GET /post166s/1.xml
  def show
    @post166 = Post166.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post166 }
    end
  end

  # GET /post166s/new
  # GET /post166s/new.xml
  def new
    @post166 = Post166.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post166 }
    end
  end

  # GET /post166s/1/edit
  def edit
    @post166 = Post166.find(params[:id])
  end

  # POST /post166s
  # POST /post166s.xml
  def create
    @post166 = Post166.new(params[:post166])

    respond_to do |format|
      if @post166.save
        format.html { redirect_to(@post166, :notice => 'Post166 was successfully created.') }
        format.xml  { render :xml => @post166, :status => :created, :location => @post166 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post166.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post166s/1
  # PUT /post166s/1.xml
  def update
    @post166 = Post166.find(params[:id])

    respond_to do |format|
      if @post166.update_attributes(params[:post166])
        format.html { redirect_to(@post166, :notice => 'Post166 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post166.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post166s/1
  # DELETE /post166s/1.xml
  def destroy
    @post166 = Post166.find(params[:id])
    @post166.destroy

    respond_to do |format|
      format.html { redirect_to(post166s_url) }
      format.xml  { head :ok }
    end
  end
end
