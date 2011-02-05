class Post24sController < ApplicationController
  # GET /post24s
  # GET /post24s.xml
  def index
    @post24s = Post24.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post24s }
    end
  end

  # GET /post24s/1
  # GET /post24s/1.xml
  def show
    @post24 = Post24.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post24 }
    end
  end

  # GET /post24s/new
  # GET /post24s/new.xml
  def new
    @post24 = Post24.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post24 }
    end
  end

  # GET /post24s/1/edit
  def edit
    @post24 = Post24.find(params[:id])
  end

  # POST /post24s
  # POST /post24s.xml
  def create
    @post24 = Post24.new(params[:post24])

    respond_to do |format|
      if @post24.save
        format.html { redirect_to(@post24, :notice => 'Post24 was successfully created.') }
        format.xml  { render :xml => @post24, :status => :created, :location => @post24 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post24.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post24s/1
  # PUT /post24s/1.xml
  def update
    @post24 = Post24.find(params[:id])

    respond_to do |format|
      if @post24.update_attributes(params[:post24])
        format.html { redirect_to(@post24, :notice => 'Post24 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post24.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post24s/1
  # DELETE /post24s/1.xml
  def destroy
    @post24 = Post24.find(params[:id])
    @post24.destroy

    respond_to do |format|
      format.html { redirect_to(post24s_url) }
      format.xml  { head :ok }
    end
  end
end
