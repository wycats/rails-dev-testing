class Post152sController < ApplicationController
  # GET /post152s
  # GET /post152s.xml
  def index
    @post152s = Post152.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post152s }
    end
  end

  # GET /post152s/1
  # GET /post152s/1.xml
  def show
    @post152 = Post152.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post152 }
    end
  end

  # GET /post152s/new
  # GET /post152s/new.xml
  def new
    @post152 = Post152.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post152 }
    end
  end

  # GET /post152s/1/edit
  def edit
    @post152 = Post152.find(params[:id])
  end

  # POST /post152s
  # POST /post152s.xml
  def create
    @post152 = Post152.new(params[:post152])

    respond_to do |format|
      if @post152.save
        format.html { redirect_to(@post152, :notice => 'Post152 was successfully created.') }
        format.xml  { render :xml => @post152, :status => :created, :location => @post152 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post152.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post152s/1
  # PUT /post152s/1.xml
  def update
    @post152 = Post152.find(params[:id])

    respond_to do |format|
      if @post152.update_attributes(params[:post152])
        format.html { redirect_to(@post152, :notice => 'Post152 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post152.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post152s/1
  # DELETE /post152s/1.xml
  def destroy
    @post152 = Post152.find(params[:id])
    @post152.destroy

    respond_to do |format|
      format.html { redirect_to(post152s_url) }
      format.xml  { head :ok }
    end
  end
end
