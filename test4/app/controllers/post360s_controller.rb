class Post360sController < ApplicationController
  # GET /post360s
  # GET /post360s.xml
  def index
    @post360s = Post360.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post360s }
    end
  end

  # GET /post360s/1
  # GET /post360s/1.xml
  def show
    @post360 = Post360.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post360 }
    end
  end

  # GET /post360s/new
  # GET /post360s/new.xml
  def new
    @post360 = Post360.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post360 }
    end
  end

  # GET /post360s/1/edit
  def edit
    @post360 = Post360.find(params[:id])
  end

  # POST /post360s
  # POST /post360s.xml
  def create
    @post360 = Post360.new(params[:post360])

    respond_to do |format|
      if @post360.save
        format.html { redirect_to(@post360, :notice => 'Post360 was successfully created.') }
        format.xml  { render :xml => @post360, :status => :created, :location => @post360 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post360.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post360s/1
  # PUT /post360s/1.xml
  def update
    @post360 = Post360.find(params[:id])

    respond_to do |format|
      if @post360.update_attributes(params[:post360])
        format.html { redirect_to(@post360, :notice => 'Post360 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post360.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post360s/1
  # DELETE /post360s/1.xml
  def destroy
    @post360 = Post360.find(params[:id])
    @post360.destroy

    respond_to do |format|
      format.html { redirect_to(post360s_url) }
      format.xml  { head :ok }
    end
  end
end
