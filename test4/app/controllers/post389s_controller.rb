class Post389sController < ApplicationController
  # GET /post389s
  # GET /post389s.xml
  def index
    @post389s = Post389.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post389s }
    end
  end

  # GET /post389s/1
  # GET /post389s/1.xml
  def show
    @post389 = Post389.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post389 }
    end
  end

  # GET /post389s/new
  # GET /post389s/new.xml
  def new
    @post389 = Post389.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post389 }
    end
  end

  # GET /post389s/1/edit
  def edit
    @post389 = Post389.find(params[:id])
  end

  # POST /post389s
  # POST /post389s.xml
  def create
    @post389 = Post389.new(params[:post389])

    respond_to do |format|
      if @post389.save
        format.html { redirect_to(@post389, :notice => 'Post389 was successfully created.') }
        format.xml  { render :xml => @post389, :status => :created, :location => @post389 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post389.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post389s/1
  # PUT /post389s/1.xml
  def update
    @post389 = Post389.find(params[:id])

    respond_to do |format|
      if @post389.update_attributes(params[:post389])
        format.html { redirect_to(@post389, :notice => 'Post389 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post389.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post389s/1
  # DELETE /post389s/1.xml
  def destroy
    @post389 = Post389.find(params[:id])
    @post389.destroy

    respond_to do |format|
      format.html { redirect_to(post389s_url) }
      format.xml  { head :ok }
    end
  end
end
