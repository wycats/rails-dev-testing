class Post349sController < ApplicationController
  # GET /post349s
  # GET /post349s.xml
  def index
    @post349s = Post349.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post349s }
    end
  end

  # GET /post349s/1
  # GET /post349s/1.xml
  def show
    @post349 = Post349.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post349 }
    end
  end

  # GET /post349s/new
  # GET /post349s/new.xml
  def new
    @post349 = Post349.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post349 }
    end
  end

  # GET /post349s/1/edit
  def edit
    @post349 = Post349.find(params[:id])
  end

  # POST /post349s
  # POST /post349s.xml
  def create
    @post349 = Post349.new(params[:post349])

    respond_to do |format|
      if @post349.save
        format.html { redirect_to(@post349, :notice => 'Post349 was successfully created.') }
        format.xml  { render :xml => @post349, :status => :created, :location => @post349 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post349.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post349s/1
  # PUT /post349s/1.xml
  def update
    @post349 = Post349.find(params[:id])

    respond_to do |format|
      if @post349.update_attributes(params[:post349])
        format.html { redirect_to(@post349, :notice => 'Post349 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post349.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post349s/1
  # DELETE /post349s/1.xml
  def destroy
    @post349 = Post349.find(params[:id])
    @post349.destroy

    respond_to do |format|
      format.html { redirect_to(post349s_url) }
      format.xml  { head :ok }
    end
  end
end
