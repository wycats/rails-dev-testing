class Post294sController < ApplicationController
  # GET /post294s
  # GET /post294s.xml
  def index
    @post294s = Post294.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post294s }
    end
  end

  # GET /post294s/1
  # GET /post294s/1.xml
  def show
    @post294 = Post294.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post294 }
    end
  end

  # GET /post294s/new
  # GET /post294s/new.xml
  def new
    @post294 = Post294.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post294 }
    end
  end

  # GET /post294s/1/edit
  def edit
    @post294 = Post294.find(params[:id])
  end

  # POST /post294s
  # POST /post294s.xml
  def create
    @post294 = Post294.new(params[:post294])

    respond_to do |format|
      if @post294.save
        format.html { redirect_to(@post294, :notice => 'Post294 was successfully created.') }
        format.xml  { render :xml => @post294, :status => :created, :location => @post294 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post294.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post294s/1
  # PUT /post294s/1.xml
  def update
    @post294 = Post294.find(params[:id])

    respond_to do |format|
      if @post294.update_attributes(params[:post294])
        format.html { redirect_to(@post294, :notice => 'Post294 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post294.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post294s/1
  # DELETE /post294s/1.xml
  def destroy
    @post294 = Post294.find(params[:id])
    @post294.destroy

    respond_to do |format|
      format.html { redirect_to(post294s_url) }
      format.xml  { head :ok }
    end
  end
end
