class Post191sController < ApplicationController
  # GET /post191s
  # GET /post191s.xml
  def index
    @post191s = Post191.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post191s }
    end
  end

  # GET /post191s/1
  # GET /post191s/1.xml
  def show
    @post191 = Post191.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post191 }
    end
  end

  # GET /post191s/new
  # GET /post191s/new.xml
  def new
    @post191 = Post191.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post191 }
    end
  end

  # GET /post191s/1/edit
  def edit
    @post191 = Post191.find(params[:id])
  end

  # POST /post191s
  # POST /post191s.xml
  def create
    @post191 = Post191.new(params[:post191])

    respond_to do |format|
      if @post191.save
        format.html { redirect_to(@post191, :notice => 'Post191 was successfully created.') }
        format.xml  { render :xml => @post191, :status => :created, :location => @post191 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post191.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post191s/1
  # PUT /post191s/1.xml
  def update
    @post191 = Post191.find(params[:id])

    respond_to do |format|
      if @post191.update_attributes(params[:post191])
        format.html { redirect_to(@post191, :notice => 'Post191 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post191.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post191s/1
  # DELETE /post191s/1.xml
  def destroy
    @post191 = Post191.find(params[:id])
    @post191.destroy

    respond_to do |format|
      format.html { redirect_to(post191s_url) }
      format.xml  { head :ok }
    end
  end
end
