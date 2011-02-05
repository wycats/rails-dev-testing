class Post270sController < ApplicationController
  # GET /post270s
  # GET /post270s.xml
  def index
    @post270s = Post270.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post270s }
    end
  end

  # GET /post270s/1
  # GET /post270s/1.xml
  def show
    @post270 = Post270.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post270 }
    end
  end

  # GET /post270s/new
  # GET /post270s/new.xml
  def new
    @post270 = Post270.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post270 }
    end
  end

  # GET /post270s/1/edit
  def edit
    @post270 = Post270.find(params[:id])
  end

  # POST /post270s
  # POST /post270s.xml
  def create
    @post270 = Post270.new(params[:post270])

    respond_to do |format|
      if @post270.save
        format.html { redirect_to(@post270, :notice => 'Post270 was successfully created.') }
        format.xml  { render :xml => @post270, :status => :created, :location => @post270 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post270.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post270s/1
  # PUT /post270s/1.xml
  def update
    @post270 = Post270.find(params[:id])

    respond_to do |format|
      if @post270.update_attributes(params[:post270])
        format.html { redirect_to(@post270, :notice => 'Post270 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post270.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post270s/1
  # DELETE /post270s/1.xml
  def destroy
    @post270 = Post270.find(params[:id])
    @post270.destroy

    respond_to do |format|
      format.html { redirect_to(post270s_url) }
      format.xml  { head :ok }
    end
  end
end
