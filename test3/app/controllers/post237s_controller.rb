class Post237sController < ApplicationController
  # GET /post237s
  # GET /post237s.xml
  def index
    @post237s = Post237.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post237s }
    end
  end

  # GET /post237s/1
  # GET /post237s/1.xml
  def show
    @post237 = Post237.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post237 }
    end
  end

  # GET /post237s/new
  # GET /post237s/new.xml
  def new
    @post237 = Post237.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post237 }
    end
  end

  # GET /post237s/1/edit
  def edit
    @post237 = Post237.find(params[:id])
  end

  # POST /post237s
  # POST /post237s.xml
  def create
    @post237 = Post237.new(params[:post237])

    respond_to do |format|
      if @post237.save
        format.html { redirect_to(@post237, :notice => 'Post237 was successfully created.') }
        format.xml  { render :xml => @post237, :status => :created, :location => @post237 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post237.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post237s/1
  # PUT /post237s/1.xml
  def update
    @post237 = Post237.find(params[:id])

    respond_to do |format|
      if @post237.update_attributes(params[:post237])
        format.html { redirect_to(@post237, :notice => 'Post237 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post237.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post237s/1
  # DELETE /post237s/1.xml
  def destroy
    @post237 = Post237.find(params[:id])
    @post237.destroy

    respond_to do |format|
      format.html { redirect_to(post237s_url) }
      format.xml  { head :ok }
    end
  end
end
