class Post246sController < ApplicationController
  # GET /post246s
  # GET /post246s.xml
  def index
    @post246s = Post246.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post246s }
    end
  end

  # GET /post246s/1
  # GET /post246s/1.xml
  def show
    @post246 = Post246.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post246 }
    end
  end

  # GET /post246s/new
  # GET /post246s/new.xml
  def new
    @post246 = Post246.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post246 }
    end
  end

  # GET /post246s/1/edit
  def edit
    @post246 = Post246.find(params[:id])
  end

  # POST /post246s
  # POST /post246s.xml
  def create
    @post246 = Post246.new(params[:post246])

    respond_to do |format|
      if @post246.save
        format.html { redirect_to(@post246, :notice => 'Post246 was successfully created.') }
        format.xml  { render :xml => @post246, :status => :created, :location => @post246 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post246.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post246s/1
  # PUT /post246s/1.xml
  def update
    @post246 = Post246.find(params[:id])

    respond_to do |format|
      if @post246.update_attributes(params[:post246])
        format.html { redirect_to(@post246, :notice => 'Post246 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post246.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post246s/1
  # DELETE /post246s/1.xml
  def destroy
    @post246 = Post246.find(params[:id])
    @post246.destroy

    respond_to do |format|
      format.html { redirect_to(post246s_url) }
      format.xml  { head :ok }
    end
  end
end
