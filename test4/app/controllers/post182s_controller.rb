class Post182sController < ApplicationController
  # GET /post182s
  # GET /post182s.xml
  def index
    @post182s = Post182.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post182s }
    end
  end

  # GET /post182s/1
  # GET /post182s/1.xml
  def show
    @post182 = Post182.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post182 }
    end
  end

  # GET /post182s/new
  # GET /post182s/new.xml
  def new
    @post182 = Post182.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post182 }
    end
  end

  # GET /post182s/1/edit
  def edit
    @post182 = Post182.find(params[:id])
  end

  # POST /post182s
  # POST /post182s.xml
  def create
    @post182 = Post182.new(params[:post182])

    respond_to do |format|
      if @post182.save
        format.html { redirect_to(@post182, :notice => 'Post182 was successfully created.') }
        format.xml  { render :xml => @post182, :status => :created, :location => @post182 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post182.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post182s/1
  # PUT /post182s/1.xml
  def update
    @post182 = Post182.find(params[:id])

    respond_to do |format|
      if @post182.update_attributes(params[:post182])
        format.html { redirect_to(@post182, :notice => 'Post182 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post182.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post182s/1
  # DELETE /post182s/1.xml
  def destroy
    @post182 = Post182.find(params[:id])
    @post182.destroy

    respond_to do |format|
      format.html { redirect_to(post182s_url) }
      format.xml  { head :ok }
    end
  end
end
