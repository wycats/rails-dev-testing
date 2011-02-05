class Post65sController < ApplicationController
  # GET /post65s
  # GET /post65s.xml
  def index
    @post65s = Post65.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post65s }
    end
  end

  # GET /post65s/1
  # GET /post65s/1.xml
  def show
    @post65 = Post65.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post65 }
    end
  end

  # GET /post65s/new
  # GET /post65s/new.xml
  def new
    @post65 = Post65.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post65 }
    end
  end

  # GET /post65s/1/edit
  def edit
    @post65 = Post65.find(params[:id])
  end

  # POST /post65s
  # POST /post65s.xml
  def create
    @post65 = Post65.new(params[:post65])

    respond_to do |format|
      if @post65.save
        format.html { redirect_to(@post65, :notice => 'Post65 was successfully created.') }
        format.xml  { render :xml => @post65, :status => :created, :location => @post65 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post65.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post65s/1
  # PUT /post65s/1.xml
  def update
    @post65 = Post65.find(params[:id])

    respond_to do |format|
      if @post65.update_attributes(params[:post65])
        format.html { redirect_to(@post65, :notice => 'Post65 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post65.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post65s/1
  # DELETE /post65s/1.xml
  def destroy
    @post65 = Post65.find(params[:id])
    @post65.destroy

    respond_to do |format|
      format.html { redirect_to(post65s_url) }
      format.xml  { head :ok }
    end
  end
end
