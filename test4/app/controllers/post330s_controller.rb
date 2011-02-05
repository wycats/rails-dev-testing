class Post330sController < ApplicationController
  # GET /post330s
  # GET /post330s.xml
  def index
    @post330s = Post330.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post330s }
    end
  end

  # GET /post330s/1
  # GET /post330s/1.xml
  def show
    @post330 = Post330.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post330 }
    end
  end

  # GET /post330s/new
  # GET /post330s/new.xml
  def new
    @post330 = Post330.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post330 }
    end
  end

  # GET /post330s/1/edit
  def edit
    @post330 = Post330.find(params[:id])
  end

  # POST /post330s
  # POST /post330s.xml
  def create
    @post330 = Post330.new(params[:post330])

    respond_to do |format|
      if @post330.save
        format.html { redirect_to(@post330, :notice => 'Post330 was successfully created.') }
        format.xml  { render :xml => @post330, :status => :created, :location => @post330 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post330.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post330s/1
  # PUT /post330s/1.xml
  def update
    @post330 = Post330.find(params[:id])

    respond_to do |format|
      if @post330.update_attributes(params[:post330])
        format.html { redirect_to(@post330, :notice => 'Post330 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post330.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post330s/1
  # DELETE /post330s/1.xml
  def destroy
    @post330 = Post330.find(params[:id])
    @post330.destroy

    respond_to do |format|
      format.html { redirect_to(post330s_url) }
      format.xml  { head :ok }
    end
  end
end
