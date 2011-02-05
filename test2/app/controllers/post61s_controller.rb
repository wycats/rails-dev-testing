class Post61sController < ApplicationController
  # GET /post61s
  # GET /post61s.xml
  def index
    @post61s = Post61.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post61s }
    end
  end

  # GET /post61s/1
  # GET /post61s/1.xml
  def show
    @post61 = Post61.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post61 }
    end
  end

  # GET /post61s/new
  # GET /post61s/new.xml
  def new
    @post61 = Post61.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post61 }
    end
  end

  # GET /post61s/1/edit
  def edit
    @post61 = Post61.find(params[:id])
  end

  # POST /post61s
  # POST /post61s.xml
  def create
    @post61 = Post61.new(params[:post61])

    respond_to do |format|
      if @post61.save
        format.html { redirect_to(@post61, :notice => 'Post61 was successfully created.') }
        format.xml  { render :xml => @post61, :status => :created, :location => @post61 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post61.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post61s/1
  # PUT /post61s/1.xml
  def update
    @post61 = Post61.find(params[:id])

    respond_to do |format|
      if @post61.update_attributes(params[:post61])
        format.html { redirect_to(@post61, :notice => 'Post61 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post61.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post61s/1
  # DELETE /post61s/1.xml
  def destroy
    @post61 = Post61.find(params[:id])
    @post61.destroy

    respond_to do |format|
      format.html { redirect_to(post61s_url) }
      format.xml  { head :ok }
    end
  end
end
