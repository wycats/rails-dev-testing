class Post218sController < ApplicationController
  # GET /post218s
  # GET /post218s.xml
  def index
    @post218s = Post218.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post218s }
    end
  end

  # GET /post218s/1
  # GET /post218s/1.xml
  def show
    @post218 = Post218.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post218 }
    end
  end

  # GET /post218s/new
  # GET /post218s/new.xml
  def new
    @post218 = Post218.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post218 }
    end
  end

  # GET /post218s/1/edit
  def edit
    @post218 = Post218.find(params[:id])
  end

  # POST /post218s
  # POST /post218s.xml
  def create
    @post218 = Post218.new(params[:post218])

    respond_to do |format|
      if @post218.save
        format.html { redirect_to(@post218, :notice => 'Post218 was successfully created.') }
        format.xml  { render :xml => @post218, :status => :created, :location => @post218 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post218.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post218s/1
  # PUT /post218s/1.xml
  def update
    @post218 = Post218.find(params[:id])

    respond_to do |format|
      if @post218.update_attributes(params[:post218])
        format.html { redirect_to(@post218, :notice => 'Post218 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post218.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post218s/1
  # DELETE /post218s/1.xml
  def destroy
    @post218 = Post218.find(params[:id])
    @post218.destroy

    respond_to do |format|
      format.html { redirect_to(post218s_url) }
      format.xml  { head :ok }
    end
  end
end
