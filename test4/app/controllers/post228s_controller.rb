class Post228sController < ApplicationController
  # GET /post228s
  # GET /post228s.xml
  def index
    @post228s = Post228.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post228s }
    end
  end

  # GET /post228s/1
  # GET /post228s/1.xml
  def show
    @post228 = Post228.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post228 }
    end
  end

  # GET /post228s/new
  # GET /post228s/new.xml
  def new
    @post228 = Post228.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post228 }
    end
  end

  # GET /post228s/1/edit
  def edit
    @post228 = Post228.find(params[:id])
  end

  # POST /post228s
  # POST /post228s.xml
  def create
    @post228 = Post228.new(params[:post228])

    respond_to do |format|
      if @post228.save
        format.html { redirect_to(@post228, :notice => 'Post228 was successfully created.') }
        format.xml  { render :xml => @post228, :status => :created, :location => @post228 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post228.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post228s/1
  # PUT /post228s/1.xml
  def update
    @post228 = Post228.find(params[:id])

    respond_to do |format|
      if @post228.update_attributes(params[:post228])
        format.html { redirect_to(@post228, :notice => 'Post228 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post228.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post228s/1
  # DELETE /post228s/1.xml
  def destroy
    @post228 = Post228.find(params[:id])
    @post228.destroy

    respond_to do |format|
      format.html { redirect_to(post228s_url) }
      format.xml  { head :ok }
    end
  end
end
