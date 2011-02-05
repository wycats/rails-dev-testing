class Post160sController < ApplicationController
  # GET /post160s
  # GET /post160s.xml
  def index
    @post160s = Post160.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post160s }
    end
  end

  # GET /post160s/1
  # GET /post160s/1.xml
  def show
    @post160 = Post160.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post160 }
    end
  end

  # GET /post160s/new
  # GET /post160s/new.xml
  def new
    @post160 = Post160.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post160 }
    end
  end

  # GET /post160s/1/edit
  def edit
    @post160 = Post160.find(params[:id])
  end

  # POST /post160s
  # POST /post160s.xml
  def create
    @post160 = Post160.new(params[:post160])

    respond_to do |format|
      if @post160.save
        format.html { redirect_to(@post160, :notice => 'Post160 was successfully created.') }
        format.xml  { render :xml => @post160, :status => :created, :location => @post160 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post160.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post160s/1
  # PUT /post160s/1.xml
  def update
    @post160 = Post160.find(params[:id])

    respond_to do |format|
      if @post160.update_attributes(params[:post160])
        format.html { redirect_to(@post160, :notice => 'Post160 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post160.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post160s/1
  # DELETE /post160s/1.xml
  def destroy
    @post160 = Post160.find(params[:id])
    @post160.destroy

    respond_to do |format|
      format.html { redirect_to(post160s_url) }
      format.xml  { head :ok }
    end
  end
end
