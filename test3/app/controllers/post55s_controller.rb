class Post55sController < ApplicationController
  # GET /post55s
  # GET /post55s.xml
  def index
    @post55s = Post55.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post55s }
    end
  end

  # GET /post55s/1
  # GET /post55s/1.xml
  def show
    @post55 = Post55.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post55 }
    end
  end

  # GET /post55s/new
  # GET /post55s/new.xml
  def new
    @post55 = Post55.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post55 }
    end
  end

  # GET /post55s/1/edit
  def edit
    @post55 = Post55.find(params[:id])
  end

  # POST /post55s
  # POST /post55s.xml
  def create
    @post55 = Post55.new(params[:post55])

    respond_to do |format|
      if @post55.save
        format.html { redirect_to(@post55, :notice => 'Post55 was successfully created.') }
        format.xml  { render :xml => @post55, :status => :created, :location => @post55 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post55.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post55s/1
  # PUT /post55s/1.xml
  def update
    @post55 = Post55.find(params[:id])

    respond_to do |format|
      if @post55.update_attributes(params[:post55])
        format.html { redirect_to(@post55, :notice => 'Post55 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post55.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post55s/1
  # DELETE /post55s/1.xml
  def destroy
    @post55 = Post55.find(params[:id])
    @post55.destroy

    respond_to do |format|
      format.html { redirect_to(post55s_url) }
      format.xml  { head :ok }
    end
  end
end
