class Post4sController < ApplicationController
  # GET /post4s
  # GET /post4s.xml
  def index
    @post4s = Post4.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post4s }
    end
  end

  # GET /post4s/1
  # GET /post4s/1.xml
  def show
    @post4 = Post4.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post4 }
    end
  end

  # GET /post4s/new
  # GET /post4s/new.xml
  def new
    @post4 = Post4.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post4 }
    end
  end

  # GET /post4s/1/edit
  def edit
    @post4 = Post4.find(params[:id])
  end

  # POST /post4s
  # POST /post4s.xml
  def create
    @post4 = Post4.new(params[:post4])

    respond_to do |format|
      if @post4.save
        format.html { redirect_to(@post4, :notice => 'Post4 was successfully created.') }
        format.xml  { render :xml => @post4, :status => :created, :location => @post4 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post4.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post4s/1
  # PUT /post4s/1.xml
  def update
    @post4 = Post4.find(params[:id])

    respond_to do |format|
      if @post4.update_attributes(params[:post4])
        format.html { redirect_to(@post4, :notice => 'Post4 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post4.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post4s/1
  # DELETE /post4s/1.xml
  def destroy
    @post4 = Post4.find(params[:id])
    @post4.destroy

    respond_to do |format|
      format.html { redirect_to(post4s_url) }
      format.xml  { head :ok }
    end
  end
end
