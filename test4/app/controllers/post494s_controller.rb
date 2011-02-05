class Post494sController < ApplicationController
  # GET /post494s
  # GET /post494s.xml
  def index
    @post494s = Post494.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post494s }
    end
  end

  # GET /post494s/1
  # GET /post494s/1.xml
  def show
    @post494 = Post494.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post494 }
    end
  end

  # GET /post494s/new
  # GET /post494s/new.xml
  def new
    @post494 = Post494.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post494 }
    end
  end

  # GET /post494s/1/edit
  def edit
    @post494 = Post494.find(params[:id])
  end

  # POST /post494s
  # POST /post494s.xml
  def create
    @post494 = Post494.new(params[:post494])

    respond_to do |format|
      if @post494.save
        format.html { redirect_to(@post494, :notice => 'Post494 was successfully created.') }
        format.xml  { render :xml => @post494, :status => :created, :location => @post494 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post494.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post494s/1
  # PUT /post494s/1.xml
  def update
    @post494 = Post494.find(params[:id])

    respond_to do |format|
      if @post494.update_attributes(params[:post494])
        format.html { redirect_to(@post494, :notice => 'Post494 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post494.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post494s/1
  # DELETE /post494s/1.xml
  def destroy
    @post494 = Post494.find(params[:id])
    @post494.destroy

    respond_to do |format|
      format.html { redirect_to(post494s_url) }
      format.xml  { head :ok }
    end
  end
end
