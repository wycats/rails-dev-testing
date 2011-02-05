class Post107sController < ApplicationController
  # GET /post107s
  # GET /post107s.xml
  def index
    @post107s = Post107.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post107s }
    end
  end

  # GET /post107s/1
  # GET /post107s/1.xml
  def show
    @post107 = Post107.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post107 }
    end
  end

  # GET /post107s/new
  # GET /post107s/new.xml
  def new
    @post107 = Post107.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post107 }
    end
  end

  # GET /post107s/1/edit
  def edit
    @post107 = Post107.find(params[:id])
  end

  # POST /post107s
  # POST /post107s.xml
  def create
    @post107 = Post107.new(params[:post107])

    respond_to do |format|
      if @post107.save
        format.html { redirect_to(@post107, :notice => 'Post107 was successfully created.') }
        format.xml  { render :xml => @post107, :status => :created, :location => @post107 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post107.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post107s/1
  # PUT /post107s/1.xml
  def update
    @post107 = Post107.find(params[:id])

    respond_to do |format|
      if @post107.update_attributes(params[:post107])
        format.html { redirect_to(@post107, :notice => 'Post107 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post107.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post107s/1
  # DELETE /post107s/1.xml
  def destroy
    @post107 = Post107.find(params[:id])
    @post107.destroy

    respond_to do |format|
      format.html { redirect_to(post107s_url) }
      format.xml  { head :ok }
    end
  end
end
