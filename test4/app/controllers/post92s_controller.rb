class Post92sController < ApplicationController
  # GET /post92s
  # GET /post92s.xml
  def index
    @post92s = Post92.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post92s }
    end
  end

  # GET /post92s/1
  # GET /post92s/1.xml
  def show
    @post92 = Post92.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post92 }
    end
  end

  # GET /post92s/new
  # GET /post92s/new.xml
  def new
    @post92 = Post92.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post92 }
    end
  end

  # GET /post92s/1/edit
  def edit
    @post92 = Post92.find(params[:id])
  end

  # POST /post92s
  # POST /post92s.xml
  def create
    @post92 = Post92.new(params[:post92])

    respond_to do |format|
      if @post92.save
        format.html { redirect_to(@post92, :notice => 'Post92 was successfully created.') }
        format.xml  { render :xml => @post92, :status => :created, :location => @post92 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post92.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post92s/1
  # PUT /post92s/1.xml
  def update
    @post92 = Post92.find(params[:id])

    respond_to do |format|
      if @post92.update_attributes(params[:post92])
        format.html { redirect_to(@post92, :notice => 'Post92 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post92.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post92s/1
  # DELETE /post92s/1.xml
  def destroy
    @post92 = Post92.find(params[:id])
    @post92.destroy

    respond_to do |format|
      format.html { redirect_to(post92s_url) }
      format.xml  { head :ok }
    end
  end
end
