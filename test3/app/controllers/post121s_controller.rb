class Post121sController < ApplicationController
  # GET /post121s
  # GET /post121s.xml
  def index
    @post121s = Post121.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post121s }
    end
  end

  # GET /post121s/1
  # GET /post121s/1.xml
  def show
    @post121 = Post121.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post121 }
    end
  end

  # GET /post121s/new
  # GET /post121s/new.xml
  def new
    @post121 = Post121.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post121 }
    end
  end

  # GET /post121s/1/edit
  def edit
    @post121 = Post121.find(params[:id])
  end

  # POST /post121s
  # POST /post121s.xml
  def create
    @post121 = Post121.new(params[:post121])

    respond_to do |format|
      if @post121.save
        format.html { redirect_to(@post121, :notice => 'Post121 was successfully created.') }
        format.xml  { render :xml => @post121, :status => :created, :location => @post121 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post121.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post121s/1
  # PUT /post121s/1.xml
  def update
    @post121 = Post121.find(params[:id])

    respond_to do |format|
      if @post121.update_attributes(params[:post121])
        format.html { redirect_to(@post121, :notice => 'Post121 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post121.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post121s/1
  # DELETE /post121s/1.xml
  def destroy
    @post121 = Post121.find(params[:id])
    @post121.destroy

    respond_to do |format|
      format.html { redirect_to(post121s_url) }
      format.xml  { head :ok }
    end
  end
end
