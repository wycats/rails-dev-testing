class Post490sController < ApplicationController
  # GET /post490s
  # GET /post490s.xml
  def index
    @post490s = Post490.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post490s }
    end
  end

  # GET /post490s/1
  # GET /post490s/1.xml
  def show
    @post490 = Post490.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post490 }
    end
  end

  # GET /post490s/new
  # GET /post490s/new.xml
  def new
    @post490 = Post490.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post490 }
    end
  end

  # GET /post490s/1/edit
  def edit
    @post490 = Post490.find(params[:id])
  end

  # POST /post490s
  # POST /post490s.xml
  def create
    @post490 = Post490.new(params[:post490])

    respond_to do |format|
      if @post490.save
        format.html { redirect_to(@post490, :notice => 'Post490 was successfully created.') }
        format.xml  { render :xml => @post490, :status => :created, :location => @post490 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post490.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post490s/1
  # PUT /post490s/1.xml
  def update
    @post490 = Post490.find(params[:id])

    respond_to do |format|
      if @post490.update_attributes(params[:post490])
        format.html { redirect_to(@post490, :notice => 'Post490 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post490.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post490s/1
  # DELETE /post490s/1.xml
  def destroy
    @post490 = Post490.find(params[:id])
    @post490.destroy

    respond_to do |format|
      format.html { redirect_to(post490s_url) }
      format.xml  { head :ok }
    end
  end
end
