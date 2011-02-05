class Post127sController < ApplicationController
  # GET /post127s
  # GET /post127s.xml
  def index
    @post127s = Post127.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post127s }
    end
  end

  # GET /post127s/1
  # GET /post127s/1.xml
  def show
    @post127 = Post127.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post127 }
    end
  end

  # GET /post127s/new
  # GET /post127s/new.xml
  def new
    @post127 = Post127.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post127 }
    end
  end

  # GET /post127s/1/edit
  def edit
    @post127 = Post127.find(params[:id])
  end

  # POST /post127s
  # POST /post127s.xml
  def create
    @post127 = Post127.new(params[:post127])

    respond_to do |format|
      if @post127.save
        format.html { redirect_to(@post127, :notice => 'Post127 was successfully created.') }
        format.xml  { render :xml => @post127, :status => :created, :location => @post127 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post127.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post127s/1
  # PUT /post127s/1.xml
  def update
    @post127 = Post127.find(params[:id])

    respond_to do |format|
      if @post127.update_attributes(params[:post127])
        format.html { redirect_to(@post127, :notice => 'Post127 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post127.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post127s/1
  # DELETE /post127s/1.xml
  def destroy
    @post127 = Post127.find(params[:id])
    @post127.destroy

    respond_to do |format|
      format.html { redirect_to(post127s_url) }
      format.xml  { head :ok }
    end
  end
end
