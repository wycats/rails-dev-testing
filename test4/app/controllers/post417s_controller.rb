class Post417sController < ApplicationController
  # GET /post417s
  # GET /post417s.xml
  def index
    @post417s = Post417.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post417s }
    end
  end

  # GET /post417s/1
  # GET /post417s/1.xml
  def show
    @post417 = Post417.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post417 }
    end
  end

  # GET /post417s/new
  # GET /post417s/new.xml
  def new
    @post417 = Post417.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post417 }
    end
  end

  # GET /post417s/1/edit
  def edit
    @post417 = Post417.find(params[:id])
  end

  # POST /post417s
  # POST /post417s.xml
  def create
    @post417 = Post417.new(params[:post417])

    respond_to do |format|
      if @post417.save
        format.html { redirect_to(@post417, :notice => 'Post417 was successfully created.') }
        format.xml  { render :xml => @post417, :status => :created, :location => @post417 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post417.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post417s/1
  # PUT /post417s/1.xml
  def update
    @post417 = Post417.find(params[:id])

    respond_to do |format|
      if @post417.update_attributes(params[:post417])
        format.html { redirect_to(@post417, :notice => 'Post417 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post417.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post417s/1
  # DELETE /post417s/1.xml
  def destroy
    @post417 = Post417.find(params[:id])
    @post417.destroy

    respond_to do |format|
      format.html { redirect_to(post417s_url) }
      format.xml  { head :ok }
    end
  end
end
