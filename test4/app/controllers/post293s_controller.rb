class Post293sController < ApplicationController
  # GET /post293s
  # GET /post293s.xml
  def index
    @post293s = Post293.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post293s }
    end
  end

  # GET /post293s/1
  # GET /post293s/1.xml
  def show
    @post293 = Post293.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post293 }
    end
  end

  # GET /post293s/new
  # GET /post293s/new.xml
  def new
    @post293 = Post293.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post293 }
    end
  end

  # GET /post293s/1/edit
  def edit
    @post293 = Post293.find(params[:id])
  end

  # POST /post293s
  # POST /post293s.xml
  def create
    @post293 = Post293.new(params[:post293])

    respond_to do |format|
      if @post293.save
        format.html { redirect_to(@post293, :notice => 'Post293 was successfully created.') }
        format.xml  { render :xml => @post293, :status => :created, :location => @post293 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post293.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post293s/1
  # PUT /post293s/1.xml
  def update
    @post293 = Post293.find(params[:id])

    respond_to do |format|
      if @post293.update_attributes(params[:post293])
        format.html { redirect_to(@post293, :notice => 'Post293 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post293.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post293s/1
  # DELETE /post293s/1.xml
  def destroy
    @post293 = Post293.find(params[:id])
    @post293.destroy

    respond_to do |format|
      format.html { redirect_to(post293s_url) }
      format.xml  { head :ok }
    end
  end
end
