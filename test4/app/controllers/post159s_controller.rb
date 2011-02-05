class Post159sController < ApplicationController
  # GET /post159s
  # GET /post159s.xml
  def index
    @post159s = Post159.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post159s }
    end
  end

  # GET /post159s/1
  # GET /post159s/1.xml
  def show
    @post159 = Post159.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post159 }
    end
  end

  # GET /post159s/new
  # GET /post159s/new.xml
  def new
    @post159 = Post159.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post159 }
    end
  end

  # GET /post159s/1/edit
  def edit
    @post159 = Post159.find(params[:id])
  end

  # POST /post159s
  # POST /post159s.xml
  def create
    @post159 = Post159.new(params[:post159])

    respond_to do |format|
      if @post159.save
        format.html { redirect_to(@post159, :notice => 'Post159 was successfully created.') }
        format.xml  { render :xml => @post159, :status => :created, :location => @post159 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post159.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post159s/1
  # PUT /post159s/1.xml
  def update
    @post159 = Post159.find(params[:id])

    respond_to do |format|
      if @post159.update_attributes(params[:post159])
        format.html { redirect_to(@post159, :notice => 'Post159 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post159.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post159s/1
  # DELETE /post159s/1.xml
  def destroy
    @post159 = Post159.find(params[:id])
    @post159.destroy

    respond_to do |format|
      format.html { redirect_to(post159s_url) }
      format.xml  { head :ok }
    end
  end
end
