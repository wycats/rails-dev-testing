class Post142sController < ApplicationController
  # GET /post142s
  # GET /post142s.xml
  def index
    @post142s = Post142.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post142s }
    end
  end

  # GET /post142s/1
  # GET /post142s/1.xml
  def show
    @post142 = Post142.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post142 }
    end
  end

  # GET /post142s/new
  # GET /post142s/new.xml
  def new
    @post142 = Post142.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post142 }
    end
  end

  # GET /post142s/1/edit
  def edit
    @post142 = Post142.find(params[:id])
  end

  # POST /post142s
  # POST /post142s.xml
  def create
    @post142 = Post142.new(params[:post142])

    respond_to do |format|
      if @post142.save
        format.html { redirect_to(@post142, :notice => 'Post142 was successfully created.') }
        format.xml  { render :xml => @post142, :status => :created, :location => @post142 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post142.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post142s/1
  # PUT /post142s/1.xml
  def update
    @post142 = Post142.find(params[:id])

    respond_to do |format|
      if @post142.update_attributes(params[:post142])
        format.html { redirect_to(@post142, :notice => 'Post142 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post142.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post142s/1
  # DELETE /post142s/1.xml
  def destroy
    @post142 = Post142.find(params[:id])
    @post142.destroy

    respond_to do |format|
      format.html { redirect_to(post142s_url) }
      format.xml  { head :ok }
    end
  end
end
