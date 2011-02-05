class Post240sController < ApplicationController
  # GET /post240s
  # GET /post240s.xml
  def index
    @post240s = Post240.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post240s }
    end
  end

  # GET /post240s/1
  # GET /post240s/1.xml
  def show
    @post240 = Post240.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post240 }
    end
  end

  # GET /post240s/new
  # GET /post240s/new.xml
  def new
    @post240 = Post240.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post240 }
    end
  end

  # GET /post240s/1/edit
  def edit
    @post240 = Post240.find(params[:id])
  end

  # POST /post240s
  # POST /post240s.xml
  def create
    @post240 = Post240.new(params[:post240])

    respond_to do |format|
      if @post240.save
        format.html { redirect_to(@post240, :notice => 'Post240 was successfully created.') }
        format.xml  { render :xml => @post240, :status => :created, :location => @post240 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post240.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post240s/1
  # PUT /post240s/1.xml
  def update
    @post240 = Post240.find(params[:id])

    respond_to do |format|
      if @post240.update_attributes(params[:post240])
        format.html { redirect_to(@post240, :notice => 'Post240 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post240.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post240s/1
  # DELETE /post240s/1.xml
  def destroy
    @post240 = Post240.find(params[:id])
    @post240.destroy

    respond_to do |format|
      format.html { redirect_to(post240s_url) }
      format.xml  { head :ok }
    end
  end
end
