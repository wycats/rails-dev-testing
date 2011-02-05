class Post183sController < ApplicationController
  # GET /post183s
  # GET /post183s.xml
  def index
    @post183s = Post183.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post183s }
    end
  end

  # GET /post183s/1
  # GET /post183s/1.xml
  def show
    @post183 = Post183.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post183 }
    end
  end

  # GET /post183s/new
  # GET /post183s/new.xml
  def new
    @post183 = Post183.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post183 }
    end
  end

  # GET /post183s/1/edit
  def edit
    @post183 = Post183.find(params[:id])
  end

  # POST /post183s
  # POST /post183s.xml
  def create
    @post183 = Post183.new(params[:post183])

    respond_to do |format|
      if @post183.save
        format.html { redirect_to(@post183, :notice => 'Post183 was successfully created.') }
        format.xml  { render :xml => @post183, :status => :created, :location => @post183 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post183.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post183s/1
  # PUT /post183s/1.xml
  def update
    @post183 = Post183.find(params[:id])

    respond_to do |format|
      if @post183.update_attributes(params[:post183])
        format.html { redirect_to(@post183, :notice => 'Post183 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post183.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post183s/1
  # DELETE /post183s/1.xml
  def destroy
    @post183 = Post183.find(params[:id])
    @post183.destroy

    respond_to do |format|
      format.html { redirect_to(post183s_url) }
      format.xml  { head :ok }
    end
  end
end
