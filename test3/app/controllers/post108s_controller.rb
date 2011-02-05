class Post108sController < ApplicationController
  # GET /post108s
  # GET /post108s.xml
  def index
    @post108s = Post108.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post108s }
    end
  end

  # GET /post108s/1
  # GET /post108s/1.xml
  def show
    @post108 = Post108.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post108 }
    end
  end

  # GET /post108s/new
  # GET /post108s/new.xml
  def new
    @post108 = Post108.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post108 }
    end
  end

  # GET /post108s/1/edit
  def edit
    @post108 = Post108.find(params[:id])
  end

  # POST /post108s
  # POST /post108s.xml
  def create
    @post108 = Post108.new(params[:post108])

    respond_to do |format|
      if @post108.save
        format.html { redirect_to(@post108, :notice => 'Post108 was successfully created.') }
        format.xml  { render :xml => @post108, :status => :created, :location => @post108 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post108.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post108s/1
  # PUT /post108s/1.xml
  def update
    @post108 = Post108.find(params[:id])

    respond_to do |format|
      if @post108.update_attributes(params[:post108])
        format.html { redirect_to(@post108, :notice => 'Post108 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post108.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post108s/1
  # DELETE /post108s/1.xml
  def destroy
    @post108 = Post108.find(params[:id])
    @post108.destroy

    respond_to do |format|
      format.html { redirect_to(post108s_url) }
      format.xml  { head :ok }
    end
  end
end
