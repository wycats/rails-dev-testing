class Post120sController < ApplicationController
  # GET /post120s
  # GET /post120s.xml
  def index
    @post120s = Post120.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post120s }
    end
  end

  # GET /post120s/1
  # GET /post120s/1.xml
  def show
    @post120 = Post120.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post120 }
    end
  end

  # GET /post120s/new
  # GET /post120s/new.xml
  def new
    @post120 = Post120.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post120 }
    end
  end

  # GET /post120s/1/edit
  def edit
    @post120 = Post120.find(params[:id])
  end

  # POST /post120s
  # POST /post120s.xml
  def create
    @post120 = Post120.new(params[:post120])

    respond_to do |format|
      if @post120.save
        format.html { redirect_to(@post120, :notice => 'Post120 was successfully created.') }
        format.xml  { render :xml => @post120, :status => :created, :location => @post120 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post120.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post120s/1
  # PUT /post120s/1.xml
  def update
    @post120 = Post120.find(params[:id])

    respond_to do |format|
      if @post120.update_attributes(params[:post120])
        format.html { redirect_to(@post120, :notice => 'Post120 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post120.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post120s/1
  # DELETE /post120s/1.xml
  def destroy
    @post120 = Post120.find(params[:id])
    @post120.destroy

    respond_to do |format|
      format.html { redirect_to(post120s_url) }
      format.xml  { head :ok }
    end
  end
end
