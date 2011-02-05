class Post408sController < ApplicationController
  # GET /post408s
  # GET /post408s.xml
  def index
    @post408s = Post408.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post408s }
    end
  end

  # GET /post408s/1
  # GET /post408s/1.xml
  def show
    @post408 = Post408.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post408 }
    end
  end

  # GET /post408s/new
  # GET /post408s/new.xml
  def new
    @post408 = Post408.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post408 }
    end
  end

  # GET /post408s/1/edit
  def edit
    @post408 = Post408.find(params[:id])
  end

  # POST /post408s
  # POST /post408s.xml
  def create
    @post408 = Post408.new(params[:post408])

    respond_to do |format|
      if @post408.save
        format.html { redirect_to(@post408, :notice => 'Post408 was successfully created.') }
        format.xml  { render :xml => @post408, :status => :created, :location => @post408 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post408.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post408s/1
  # PUT /post408s/1.xml
  def update
    @post408 = Post408.find(params[:id])

    respond_to do |format|
      if @post408.update_attributes(params[:post408])
        format.html { redirect_to(@post408, :notice => 'Post408 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post408.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post408s/1
  # DELETE /post408s/1.xml
  def destroy
    @post408 = Post408.find(params[:id])
    @post408.destroy

    respond_to do |format|
      format.html { redirect_to(post408s_url) }
      format.xml  { head :ok }
    end
  end
end
