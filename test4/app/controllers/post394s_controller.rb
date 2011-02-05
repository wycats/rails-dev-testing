class Post394sController < ApplicationController
  # GET /post394s
  # GET /post394s.xml
  def index
    @post394s = Post394.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post394s }
    end
  end

  # GET /post394s/1
  # GET /post394s/1.xml
  def show
    @post394 = Post394.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post394 }
    end
  end

  # GET /post394s/new
  # GET /post394s/new.xml
  def new
    @post394 = Post394.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post394 }
    end
  end

  # GET /post394s/1/edit
  def edit
    @post394 = Post394.find(params[:id])
  end

  # POST /post394s
  # POST /post394s.xml
  def create
    @post394 = Post394.new(params[:post394])

    respond_to do |format|
      if @post394.save
        format.html { redirect_to(@post394, :notice => 'Post394 was successfully created.') }
        format.xml  { render :xml => @post394, :status => :created, :location => @post394 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post394.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post394s/1
  # PUT /post394s/1.xml
  def update
    @post394 = Post394.find(params[:id])

    respond_to do |format|
      if @post394.update_attributes(params[:post394])
        format.html { redirect_to(@post394, :notice => 'Post394 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post394.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post394s/1
  # DELETE /post394s/1.xml
  def destroy
    @post394 = Post394.find(params[:id])
    @post394.destroy

    respond_to do |format|
      format.html { redirect_to(post394s_url) }
      format.xml  { head :ok }
    end
  end
end
