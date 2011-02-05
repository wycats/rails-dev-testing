class Post225sController < ApplicationController
  # GET /post225s
  # GET /post225s.xml
  def index
    @post225s = Post225.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post225s }
    end
  end

  # GET /post225s/1
  # GET /post225s/1.xml
  def show
    @post225 = Post225.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post225 }
    end
  end

  # GET /post225s/new
  # GET /post225s/new.xml
  def new
    @post225 = Post225.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post225 }
    end
  end

  # GET /post225s/1/edit
  def edit
    @post225 = Post225.find(params[:id])
  end

  # POST /post225s
  # POST /post225s.xml
  def create
    @post225 = Post225.new(params[:post225])

    respond_to do |format|
      if @post225.save
        format.html { redirect_to(@post225, :notice => 'Post225 was successfully created.') }
        format.xml  { render :xml => @post225, :status => :created, :location => @post225 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post225.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post225s/1
  # PUT /post225s/1.xml
  def update
    @post225 = Post225.find(params[:id])

    respond_to do |format|
      if @post225.update_attributes(params[:post225])
        format.html { redirect_to(@post225, :notice => 'Post225 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post225.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post225s/1
  # DELETE /post225s/1.xml
  def destroy
    @post225 = Post225.find(params[:id])
    @post225.destroy

    respond_to do |format|
      format.html { redirect_to(post225s_url) }
      format.xml  { head :ok }
    end
  end
end
