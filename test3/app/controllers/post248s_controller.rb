class Post248sController < ApplicationController
  # GET /post248s
  # GET /post248s.xml
  def index
    @post248s = Post248.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post248s }
    end
  end

  # GET /post248s/1
  # GET /post248s/1.xml
  def show
    @post248 = Post248.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post248 }
    end
  end

  # GET /post248s/new
  # GET /post248s/new.xml
  def new
    @post248 = Post248.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post248 }
    end
  end

  # GET /post248s/1/edit
  def edit
    @post248 = Post248.find(params[:id])
  end

  # POST /post248s
  # POST /post248s.xml
  def create
    @post248 = Post248.new(params[:post248])

    respond_to do |format|
      if @post248.save
        format.html { redirect_to(@post248, :notice => 'Post248 was successfully created.') }
        format.xml  { render :xml => @post248, :status => :created, :location => @post248 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post248.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post248s/1
  # PUT /post248s/1.xml
  def update
    @post248 = Post248.find(params[:id])

    respond_to do |format|
      if @post248.update_attributes(params[:post248])
        format.html { redirect_to(@post248, :notice => 'Post248 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post248.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post248s/1
  # DELETE /post248s/1.xml
  def destroy
    @post248 = Post248.find(params[:id])
    @post248.destroy

    respond_to do |format|
      format.html { redirect_to(post248s_url) }
      format.xml  { head :ok }
    end
  end
end
