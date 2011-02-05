class Post470sController < ApplicationController
  # GET /post470s
  # GET /post470s.xml
  def index
    @post470s = Post470.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post470s }
    end
  end

  # GET /post470s/1
  # GET /post470s/1.xml
  def show
    @post470 = Post470.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post470 }
    end
  end

  # GET /post470s/new
  # GET /post470s/new.xml
  def new
    @post470 = Post470.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post470 }
    end
  end

  # GET /post470s/1/edit
  def edit
    @post470 = Post470.find(params[:id])
  end

  # POST /post470s
  # POST /post470s.xml
  def create
    @post470 = Post470.new(params[:post470])

    respond_to do |format|
      if @post470.save
        format.html { redirect_to(@post470, :notice => 'Post470 was successfully created.') }
        format.xml  { render :xml => @post470, :status => :created, :location => @post470 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post470.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post470s/1
  # PUT /post470s/1.xml
  def update
    @post470 = Post470.find(params[:id])

    respond_to do |format|
      if @post470.update_attributes(params[:post470])
        format.html { redirect_to(@post470, :notice => 'Post470 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post470.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post470s/1
  # DELETE /post470s/1.xml
  def destroy
    @post470 = Post470.find(params[:id])
    @post470.destroy

    respond_to do |format|
      format.html { redirect_to(post470s_url) }
      format.xml  { head :ok }
    end
  end
end
