class Post155sController < ApplicationController
  # GET /post155s
  # GET /post155s.xml
  def index
    @post155s = Post155.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post155s }
    end
  end

  # GET /post155s/1
  # GET /post155s/1.xml
  def show
    @post155 = Post155.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post155 }
    end
  end

  # GET /post155s/new
  # GET /post155s/new.xml
  def new
    @post155 = Post155.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post155 }
    end
  end

  # GET /post155s/1/edit
  def edit
    @post155 = Post155.find(params[:id])
  end

  # POST /post155s
  # POST /post155s.xml
  def create
    @post155 = Post155.new(params[:post155])

    respond_to do |format|
      if @post155.save
        format.html { redirect_to(@post155, :notice => 'Post155 was successfully created.') }
        format.xml  { render :xml => @post155, :status => :created, :location => @post155 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post155.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post155s/1
  # PUT /post155s/1.xml
  def update
    @post155 = Post155.find(params[:id])

    respond_to do |format|
      if @post155.update_attributes(params[:post155])
        format.html { redirect_to(@post155, :notice => 'Post155 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post155.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post155s/1
  # DELETE /post155s/1.xml
  def destroy
    @post155 = Post155.find(params[:id])
    @post155.destroy

    respond_to do |format|
      format.html { redirect_to(post155s_url) }
      format.xml  { head :ok }
    end
  end
end
