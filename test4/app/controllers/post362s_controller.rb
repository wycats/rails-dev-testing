class Post362sController < ApplicationController
  # GET /post362s
  # GET /post362s.xml
  def index
    @post362s = Post362.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post362s }
    end
  end

  # GET /post362s/1
  # GET /post362s/1.xml
  def show
    @post362 = Post362.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post362 }
    end
  end

  # GET /post362s/new
  # GET /post362s/new.xml
  def new
    @post362 = Post362.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post362 }
    end
  end

  # GET /post362s/1/edit
  def edit
    @post362 = Post362.find(params[:id])
  end

  # POST /post362s
  # POST /post362s.xml
  def create
    @post362 = Post362.new(params[:post362])

    respond_to do |format|
      if @post362.save
        format.html { redirect_to(@post362, :notice => 'Post362 was successfully created.') }
        format.xml  { render :xml => @post362, :status => :created, :location => @post362 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post362.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post362s/1
  # PUT /post362s/1.xml
  def update
    @post362 = Post362.find(params[:id])

    respond_to do |format|
      if @post362.update_attributes(params[:post362])
        format.html { redirect_to(@post362, :notice => 'Post362 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post362.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post362s/1
  # DELETE /post362s/1.xml
  def destroy
    @post362 = Post362.find(params[:id])
    @post362.destroy

    respond_to do |format|
      format.html { redirect_to(post362s_url) }
      format.xml  { head :ok }
    end
  end
end
