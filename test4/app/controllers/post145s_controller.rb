class Post145sController < ApplicationController
  # GET /post145s
  # GET /post145s.xml
  def index
    @post145s = Post145.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post145s }
    end
  end

  # GET /post145s/1
  # GET /post145s/1.xml
  def show
    @post145 = Post145.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post145 }
    end
  end

  # GET /post145s/new
  # GET /post145s/new.xml
  def new
    @post145 = Post145.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post145 }
    end
  end

  # GET /post145s/1/edit
  def edit
    @post145 = Post145.find(params[:id])
  end

  # POST /post145s
  # POST /post145s.xml
  def create
    @post145 = Post145.new(params[:post145])

    respond_to do |format|
      if @post145.save
        format.html { redirect_to(@post145, :notice => 'Post145 was successfully created.') }
        format.xml  { render :xml => @post145, :status => :created, :location => @post145 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post145.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post145s/1
  # PUT /post145s/1.xml
  def update
    @post145 = Post145.find(params[:id])

    respond_to do |format|
      if @post145.update_attributes(params[:post145])
        format.html { redirect_to(@post145, :notice => 'Post145 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post145.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post145s/1
  # DELETE /post145s/1.xml
  def destroy
    @post145 = Post145.find(params[:id])
    @post145.destroy

    respond_to do |format|
      format.html { redirect_to(post145s_url) }
      format.xml  { head :ok }
    end
  end
end
