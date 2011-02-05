class Post119sController < ApplicationController
  # GET /post119s
  # GET /post119s.xml
  def index
    @post119s = Post119.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post119s }
    end
  end

  # GET /post119s/1
  # GET /post119s/1.xml
  def show
    @post119 = Post119.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post119 }
    end
  end

  # GET /post119s/new
  # GET /post119s/new.xml
  def new
    @post119 = Post119.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post119 }
    end
  end

  # GET /post119s/1/edit
  def edit
    @post119 = Post119.find(params[:id])
  end

  # POST /post119s
  # POST /post119s.xml
  def create
    @post119 = Post119.new(params[:post119])

    respond_to do |format|
      if @post119.save
        format.html { redirect_to(@post119, :notice => 'Post119 was successfully created.') }
        format.xml  { render :xml => @post119, :status => :created, :location => @post119 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post119.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post119s/1
  # PUT /post119s/1.xml
  def update
    @post119 = Post119.find(params[:id])

    respond_to do |format|
      if @post119.update_attributes(params[:post119])
        format.html { redirect_to(@post119, :notice => 'Post119 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post119.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post119s/1
  # DELETE /post119s/1.xml
  def destroy
    @post119 = Post119.find(params[:id])
    @post119.destroy

    respond_to do |format|
      format.html { redirect_to(post119s_url) }
      format.xml  { head :ok }
    end
  end
end
