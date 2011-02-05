class Post198sController < ApplicationController
  # GET /post198s
  # GET /post198s.xml
  def index
    @post198s = Post198.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post198s }
    end
  end

  # GET /post198s/1
  # GET /post198s/1.xml
  def show
    @post198 = Post198.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post198 }
    end
  end

  # GET /post198s/new
  # GET /post198s/new.xml
  def new
    @post198 = Post198.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post198 }
    end
  end

  # GET /post198s/1/edit
  def edit
    @post198 = Post198.find(params[:id])
  end

  # POST /post198s
  # POST /post198s.xml
  def create
    @post198 = Post198.new(params[:post198])

    respond_to do |format|
      if @post198.save
        format.html { redirect_to(@post198, :notice => 'Post198 was successfully created.') }
        format.xml  { render :xml => @post198, :status => :created, :location => @post198 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post198.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post198s/1
  # PUT /post198s/1.xml
  def update
    @post198 = Post198.find(params[:id])

    respond_to do |format|
      if @post198.update_attributes(params[:post198])
        format.html { redirect_to(@post198, :notice => 'Post198 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post198.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post198s/1
  # DELETE /post198s/1.xml
  def destroy
    @post198 = Post198.find(params[:id])
    @post198.destroy

    respond_to do |format|
      format.html { redirect_to(post198s_url) }
      format.xml  { head :ok }
    end
  end
end
