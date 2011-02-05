class Post420sController < ApplicationController
  # GET /post420s
  # GET /post420s.xml
  def index
    @post420s = Post420.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post420s }
    end
  end

  # GET /post420s/1
  # GET /post420s/1.xml
  def show
    @post420 = Post420.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post420 }
    end
  end

  # GET /post420s/new
  # GET /post420s/new.xml
  def new
    @post420 = Post420.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post420 }
    end
  end

  # GET /post420s/1/edit
  def edit
    @post420 = Post420.find(params[:id])
  end

  # POST /post420s
  # POST /post420s.xml
  def create
    @post420 = Post420.new(params[:post420])

    respond_to do |format|
      if @post420.save
        format.html { redirect_to(@post420, :notice => 'Post420 was successfully created.') }
        format.xml  { render :xml => @post420, :status => :created, :location => @post420 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post420.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post420s/1
  # PUT /post420s/1.xml
  def update
    @post420 = Post420.find(params[:id])

    respond_to do |format|
      if @post420.update_attributes(params[:post420])
        format.html { redirect_to(@post420, :notice => 'Post420 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post420.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post420s/1
  # DELETE /post420s/1.xml
  def destroy
    @post420 = Post420.find(params[:id])
    @post420.destroy

    respond_to do |format|
      format.html { redirect_to(post420s_url) }
      format.xml  { head :ok }
    end
  end
end
