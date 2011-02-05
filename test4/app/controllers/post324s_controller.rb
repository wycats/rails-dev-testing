class Post324sController < ApplicationController
  # GET /post324s
  # GET /post324s.xml
  def index
    @post324s = Post324.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post324s }
    end
  end

  # GET /post324s/1
  # GET /post324s/1.xml
  def show
    @post324 = Post324.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post324 }
    end
  end

  # GET /post324s/new
  # GET /post324s/new.xml
  def new
    @post324 = Post324.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post324 }
    end
  end

  # GET /post324s/1/edit
  def edit
    @post324 = Post324.find(params[:id])
  end

  # POST /post324s
  # POST /post324s.xml
  def create
    @post324 = Post324.new(params[:post324])

    respond_to do |format|
      if @post324.save
        format.html { redirect_to(@post324, :notice => 'Post324 was successfully created.') }
        format.xml  { render :xml => @post324, :status => :created, :location => @post324 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post324.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post324s/1
  # PUT /post324s/1.xml
  def update
    @post324 = Post324.find(params[:id])

    respond_to do |format|
      if @post324.update_attributes(params[:post324])
        format.html { redirect_to(@post324, :notice => 'Post324 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post324.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post324s/1
  # DELETE /post324s/1.xml
  def destroy
    @post324 = Post324.find(params[:id])
    @post324.destroy

    respond_to do |format|
      format.html { redirect_to(post324s_url) }
      format.xml  { head :ok }
    end
  end
end
