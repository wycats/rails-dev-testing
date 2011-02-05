class Post467sController < ApplicationController
  # GET /post467s
  # GET /post467s.xml
  def index
    @post467s = Post467.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post467s }
    end
  end

  # GET /post467s/1
  # GET /post467s/1.xml
  def show
    @post467 = Post467.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post467 }
    end
  end

  # GET /post467s/new
  # GET /post467s/new.xml
  def new
    @post467 = Post467.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post467 }
    end
  end

  # GET /post467s/1/edit
  def edit
    @post467 = Post467.find(params[:id])
  end

  # POST /post467s
  # POST /post467s.xml
  def create
    @post467 = Post467.new(params[:post467])

    respond_to do |format|
      if @post467.save
        format.html { redirect_to(@post467, :notice => 'Post467 was successfully created.') }
        format.xml  { render :xml => @post467, :status => :created, :location => @post467 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post467.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post467s/1
  # PUT /post467s/1.xml
  def update
    @post467 = Post467.find(params[:id])

    respond_to do |format|
      if @post467.update_attributes(params[:post467])
        format.html { redirect_to(@post467, :notice => 'Post467 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post467.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post467s/1
  # DELETE /post467s/1.xml
  def destroy
    @post467 = Post467.find(params[:id])
    @post467.destroy

    respond_to do |format|
      format.html { redirect_to(post467s_url) }
      format.xml  { head :ok }
    end
  end
end
