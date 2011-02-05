class Post287sController < ApplicationController
  # GET /post287s
  # GET /post287s.xml
  def index
    @post287s = Post287.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post287s }
    end
  end

  # GET /post287s/1
  # GET /post287s/1.xml
  def show
    @post287 = Post287.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post287 }
    end
  end

  # GET /post287s/new
  # GET /post287s/new.xml
  def new
    @post287 = Post287.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post287 }
    end
  end

  # GET /post287s/1/edit
  def edit
    @post287 = Post287.find(params[:id])
  end

  # POST /post287s
  # POST /post287s.xml
  def create
    @post287 = Post287.new(params[:post287])

    respond_to do |format|
      if @post287.save
        format.html { redirect_to(@post287, :notice => 'Post287 was successfully created.') }
        format.xml  { render :xml => @post287, :status => :created, :location => @post287 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post287.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post287s/1
  # PUT /post287s/1.xml
  def update
    @post287 = Post287.find(params[:id])

    respond_to do |format|
      if @post287.update_attributes(params[:post287])
        format.html { redirect_to(@post287, :notice => 'Post287 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post287.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post287s/1
  # DELETE /post287s/1.xml
  def destroy
    @post287 = Post287.find(params[:id])
    @post287.destroy

    respond_to do |format|
      format.html { redirect_to(post287s_url) }
      format.xml  { head :ok }
    end
  end
end
