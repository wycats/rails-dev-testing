class Post310sController < ApplicationController
  # GET /post310s
  # GET /post310s.xml
  def index
    @post310s = Post310.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post310s }
    end
  end

  # GET /post310s/1
  # GET /post310s/1.xml
  def show
    @post310 = Post310.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post310 }
    end
  end

  # GET /post310s/new
  # GET /post310s/new.xml
  def new
    @post310 = Post310.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post310 }
    end
  end

  # GET /post310s/1/edit
  def edit
    @post310 = Post310.find(params[:id])
  end

  # POST /post310s
  # POST /post310s.xml
  def create
    @post310 = Post310.new(params[:post310])

    respond_to do |format|
      if @post310.save
        format.html { redirect_to(@post310, :notice => 'Post310 was successfully created.') }
        format.xml  { render :xml => @post310, :status => :created, :location => @post310 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post310.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post310s/1
  # PUT /post310s/1.xml
  def update
    @post310 = Post310.find(params[:id])

    respond_to do |format|
      if @post310.update_attributes(params[:post310])
        format.html { redirect_to(@post310, :notice => 'Post310 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post310.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post310s/1
  # DELETE /post310s/1.xml
  def destroy
    @post310 = Post310.find(params[:id])
    @post310.destroy

    respond_to do |format|
      format.html { redirect_to(post310s_url) }
      format.xml  { head :ok }
    end
  end
end
