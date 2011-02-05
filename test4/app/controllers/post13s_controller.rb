class Post13sController < ApplicationController
  # GET /post13s
  # GET /post13s.xml
  def index
    @post13s = Post13.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post13s }
    end
  end

  # GET /post13s/1
  # GET /post13s/1.xml
  def show
    @post13 = Post13.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post13 }
    end
  end

  # GET /post13s/new
  # GET /post13s/new.xml
  def new
    @post13 = Post13.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post13 }
    end
  end

  # GET /post13s/1/edit
  def edit
    @post13 = Post13.find(params[:id])
  end

  # POST /post13s
  # POST /post13s.xml
  def create
    @post13 = Post13.new(params[:post13])

    respond_to do |format|
      if @post13.save
        format.html { redirect_to(@post13, :notice => 'Post13 was successfully created.') }
        format.xml  { render :xml => @post13, :status => :created, :location => @post13 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post13.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post13s/1
  # PUT /post13s/1.xml
  def update
    @post13 = Post13.find(params[:id])

    respond_to do |format|
      if @post13.update_attributes(params[:post13])
        format.html { redirect_to(@post13, :notice => 'Post13 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post13.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post13s/1
  # DELETE /post13s/1.xml
  def destroy
    @post13 = Post13.find(params[:id])
    @post13.destroy

    respond_to do |format|
      format.html { redirect_to(post13s_url) }
      format.xml  { head :ok }
    end
  end
end
