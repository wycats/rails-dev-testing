class Post50sController < ApplicationController
  # GET /post50s
  # GET /post50s.xml
  def index
    @post50s = Post50.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post50s }
    end
  end

  # GET /post50s/1
  # GET /post50s/1.xml
  def show
    @post50 = Post50.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post50 }
    end
  end

  # GET /post50s/new
  # GET /post50s/new.xml
  def new
    @post50 = Post50.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post50 }
    end
  end

  # GET /post50s/1/edit
  def edit
    @post50 = Post50.find(params[:id])
  end

  # POST /post50s
  # POST /post50s.xml
  def create
    @post50 = Post50.new(params[:post50])

    respond_to do |format|
      if @post50.save
        format.html { redirect_to(@post50, :notice => 'Post50 was successfully created.') }
        format.xml  { render :xml => @post50, :status => :created, :location => @post50 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post50.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post50s/1
  # PUT /post50s/1.xml
  def update
    @post50 = Post50.find(params[:id])

    respond_to do |format|
      if @post50.update_attributes(params[:post50])
        format.html { redirect_to(@post50, :notice => 'Post50 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post50.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post50s/1
  # DELETE /post50s/1.xml
  def destroy
    @post50 = Post50.find(params[:id])
    @post50.destroy

    respond_to do |format|
      format.html { redirect_to(post50s_url) }
      format.xml  { head :ok }
    end
  end
end
