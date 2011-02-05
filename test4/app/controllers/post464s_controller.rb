class Post464sController < ApplicationController
  # GET /post464s
  # GET /post464s.xml
  def index
    @post464s = Post464.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post464s }
    end
  end

  # GET /post464s/1
  # GET /post464s/1.xml
  def show
    @post464 = Post464.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post464 }
    end
  end

  # GET /post464s/new
  # GET /post464s/new.xml
  def new
    @post464 = Post464.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post464 }
    end
  end

  # GET /post464s/1/edit
  def edit
    @post464 = Post464.find(params[:id])
  end

  # POST /post464s
  # POST /post464s.xml
  def create
    @post464 = Post464.new(params[:post464])

    respond_to do |format|
      if @post464.save
        format.html { redirect_to(@post464, :notice => 'Post464 was successfully created.') }
        format.xml  { render :xml => @post464, :status => :created, :location => @post464 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post464.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post464s/1
  # PUT /post464s/1.xml
  def update
    @post464 = Post464.find(params[:id])

    respond_to do |format|
      if @post464.update_attributes(params[:post464])
        format.html { redirect_to(@post464, :notice => 'Post464 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post464.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post464s/1
  # DELETE /post464s/1.xml
  def destroy
    @post464 = Post464.find(params[:id])
    @post464.destroy

    respond_to do |format|
      format.html { redirect_to(post464s_url) }
      format.xml  { head :ok }
    end
  end
end
