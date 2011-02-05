class Post168sController < ApplicationController
  # GET /post168s
  # GET /post168s.xml
  def index
    @post168s = Post168.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post168s }
    end
  end

  # GET /post168s/1
  # GET /post168s/1.xml
  def show
    @post168 = Post168.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post168 }
    end
  end

  # GET /post168s/new
  # GET /post168s/new.xml
  def new
    @post168 = Post168.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post168 }
    end
  end

  # GET /post168s/1/edit
  def edit
    @post168 = Post168.find(params[:id])
  end

  # POST /post168s
  # POST /post168s.xml
  def create
    @post168 = Post168.new(params[:post168])

    respond_to do |format|
      if @post168.save
        format.html { redirect_to(@post168, :notice => 'Post168 was successfully created.') }
        format.xml  { render :xml => @post168, :status => :created, :location => @post168 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post168.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post168s/1
  # PUT /post168s/1.xml
  def update
    @post168 = Post168.find(params[:id])

    respond_to do |format|
      if @post168.update_attributes(params[:post168])
        format.html { redirect_to(@post168, :notice => 'Post168 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post168.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post168s/1
  # DELETE /post168s/1.xml
  def destroy
    @post168 = Post168.find(params[:id])
    @post168.destroy

    respond_to do |format|
      format.html { redirect_to(post168s_url) }
      format.xml  { head :ok }
    end
  end
end
