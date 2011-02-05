class Post209sController < ApplicationController
  # GET /post209s
  # GET /post209s.xml
  def index
    @post209s = Post209.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post209s }
    end
  end

  # GET /post209s/1
  # GET /post209s/1.xml
  def show
    @post209 = Post209.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post209 }
    end
  end

  # GET /post209s/new
  # GET /post209s/new.xml
  def new
    @post209 = Post209.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post209 }
    end
  end

  # GET /post209s/1/edit
  def edit
    @post209 = Post209.find(params[:id])
  end

  # POST /post209s
  # POST /post209s.xml
  def create
    @post209 = Post209.new(params[:post209])

    respond_to do |format|
      if @post209.save
        format.html { redirect_to(@post209, :notice => 'Post209 was successfully created.') }
        format.xml  { render :xml => @post209, :status => :created, :location => @post209 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post209.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post209s/1
  # PUT /post209s/1.xml
  def update
    @post209 = Post209.find(params[:id])

    respond_to do |format|
      if @post209.update_attributes(params[:post209])
        format.html { redirect_to(@post209, :notice => 'Post209 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post209.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post209s/1
  # DELETE /post209s/1.xml
  def destroy
    @post209 = Post209.find(params[:id])
    @post209.destroy

    respond_to do |format|
      format.html { redirect_to(post209s_url) }
      format.xml  { head :ok }
    end
  end
end
