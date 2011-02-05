class Post354sController < ApplicationController
  # GET /post354s
  # GET /post354s.xml
  def index
    @post354s = Post354.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post354s }
    end
  end

  # GET /post354s/1
  # GET /post354s/1.xml
  def show
    @post354 = Post354.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post354 }
    end
  end

  # GET /post354s/new
  # GET /post354s/new.xml
  def new
    @post354 = Post354.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post354 }
    end
  end

  # GET /post354s/1/edit
  def edit
    @post354 = Post354.find(params[:id])
  end

  # POST /post354s
  # POST /post354s.xml
  def create
    @post354 = Post354.new(params[:post354])

    respond_to do |format|
      if @post354.save
        format.html { redirect_to(@post354, :notice => 'Post354 was successfully created.') }
        format.xml  { render :xml => @post354, :status => :created, :location => @post354 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post354.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post354s/1
  # PUT /post354s/1.xml
  def update
    @post354 = Post354.find(params[:id])

    respond_to do |format|
      if @post354.update_attributes(params[:post354])
        format.html { redirect_to(@post354, :notice => 'Post354 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post354.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post354s/1
  # DELETE /post354s/1.xml
  def destroy
    @post354 = Post354.find(params[:id])
    @post354.destroy

    respond_to do |format|
      format.html { redirect_to(post354s_url) }
      format.xml  { head :ok }
    end
  end
end
