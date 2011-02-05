class Post358sController < ApplicationController
  # GET /post358s
  # GET /post358s.xml
  def index
    @post358s = Post358.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post358s }
    end
  end

  # GET /post358s/1
  # GET /post358s/1.xml
  def show
    @post358 = Post358.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post358 }
    end
  end

  # GET /post358s/new
  # GET /post358s/new.xml
  def new
    @post358 = Post358.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post358 }
    end
  end

  # GET /post358s/1/edit
  def edit
    @post358 = Post358.find(params[:id])
  end

  # POST /post358s
  # POST /post358s.xml
  def create
    @post358 = Post358.new(params[:post358])

    respond_to do |format|
      if @post358.save
        format.html { redirect_to(@post358, :notice => 'Post358 was successfully created.') }
        format.xml  { render :xml => @post358, :status => :created, :location => @post358 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post358.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post358s/1
  # PUT /post358s/1.xml
  def update
    @post358 = Post358.find(params[:id])

    respond_to do |format|
      if @post358.update_attributes(params[:post358])
        format.html { redirect_to(@post358, :notice => 'Post358 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post358.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post358s/1
  # DELETE /post358s/1.xml
  def destroy
    @post358 = Post358.find(params[:id])
    @post358.destroy

    respond_to do |format|
      format.html { redirect_to(post358s_url) }
      format.xml  { head :ok }
    end
  end
end
