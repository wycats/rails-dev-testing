class Post90sController < ApplicationController
  # GET /post90s
  # GET /post90s.xml
  def index
    @post90s = Post90.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post90s }
    end
  end

  # GET /post90s/1
  # GET /post90s/1.xml
  def show
    @post90 = Post90.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post90 }
    end
  end

  # GET /post90s/new
  # GET /post90s/new.xml
  def new
    @post90 = Post90.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post90 }
    end
  end

  # GET /post90s/1/edit
  def edit
    @post90 = Post90.find(params[:id])
  end

  # POST /post90s
  # POST /post90s.xml
  def create
    @post90 = Post90.new(params[:post90])

    respond_to do |format|
      if @post90.save
        format.html { redirect_to(@post90, :notice => 'Post90 was successfully created.') }
        format.xml  { render :xml => @post90, :status => :created, :location => @post90 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post90.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post90s/1
  # PUT /post90s/1.xml
  def update
    @post90 = Post90.find(params[:id])

    respond_to do |format|
      if @post90.update_attributes(params[:post90])
        format.html { redirect_to(@post90, :notice => 'Post90 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post90.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post90s/1
  # DELETE /post90s/1.xml
  def destroy
    @post90 = Post90.find(params[:id])
    @post90.destroy

    respond_to do |format|
      format.html { redirect_to(post90s_url) }
      format.xml  { head :ok }
    end
  end
end
