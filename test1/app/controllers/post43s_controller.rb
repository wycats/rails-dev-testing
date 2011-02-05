class Post43sController < ApplicationController
  # GET /post43s
  # GET /post43s.xml
  def index
    @post43s = Post43.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post43s }
    end
  end

  # GET /post43s/1
  # GET /post43s/1.xml
  def show
    @post43 = Post43.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post43 }
    end
  end

  # GET /post43s/new
  # GET /post43s/new.xml
  def new
    @post43 = Post43.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post43 }
    end
  end

  # GET /post43s/1/edit
  def edit
    @post43 = Post43.find(params[:id])
  end

  # POST /post43s
  # POST /post43s.xml
  def create
    @post43 = Post43.new(params[:post43])

    respond_to do |format|
      if @post43.save
        format.html { redirect_to(@post43, :notice => 'Post43 was successfully created.') }
        format.xml  { render :xml => @post43, :status => :created, :location => @post43 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post43.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post43s/1
  # PUT /post43s/1.xml
  def update
    @post43 = Post43.find(params[:id])

    respond_to do |format|
      if @post43.update_attributes(params[:post43])
        format.html { redirect_to(@post43, :notice => 'Post43 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post43.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post43s/1
  # DELETE /post43s/1.xml
  def destroy
    @post43 = Post43.find(params[:id])
    @post43.destroy

    respond_to do |format|
      format.html { redirect_to(post43s_url) }
      format.xml  { head :ok }
    end
  end
end
