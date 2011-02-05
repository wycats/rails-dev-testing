class Post154sController < ApplicationController
  # GET /post154s
  # GET /post154s.xml
  def index
    @post154s = Post154.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post154s }
    end
  end

  # GET /post154s/1
  # GET /post154s/1.xml
  def show
    @post154 = Post154.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post154 }
    end
  end

  # GET /post154s/new
  # GET /post154s/new.xml
  def new
    @post154 = Post154.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post154 }
    end
  end

  # GET /post154s/1/edit
  def edit
    @post154 = Post154.find(params[:id])
  end

  # POST /post154s
  # POST /post154s.xml
  def create
    @post154 = Post154.new(params[:post154])

    respond_to do |format|
      if @post154.save
        format.html { redirect_to(@post154, :notice => 'Post154 was successfully created.') }
        format.xml  { render :xml => @post154, :status => :created, :location => @post154 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post154.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post154s/1
  # PUT /post154s/1.xml
  def update
    @post154 = Post154.find(params[:id])

    respond_to do |format|
      if @post154.update_attributes(params[:post154])
        format.html { redirect_to(@post154, :notice => 'Post154 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post154.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post154s/1
  # DELETE /post154s/1.xml
  def destroy
    @post154 = Post154.find(params[:id])
    @post154.destroy

    respond_to do |format|
      format.html { redirect_to(post154s_url) }
      format.xml  { head :ok }
    end
  end
end
