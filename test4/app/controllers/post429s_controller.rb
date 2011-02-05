class Post429sController < ApplicationController
  # GET /post429s
  # GET /post429s.xml
  def index
    @post429s = Post429.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post429s }
    end
  end

  # GET /post429s/1
  # GET /post429s/1.xml
  def show
    @post429 = Post429.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post429 }
    end
  end

  # GET /post429s/new
  # GET /post429s/new.xml
  def new
    @post429 = Post429.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post429 }
    end
  end

  # GET /post429s/1/edit
  def edit
    @post429 = Post429.find(params[:id])
  end

  # POST /post429s
  # POST /post429s.xml
  def create
    @post429 = Post429.new(params[:post429])

    respond_to do |format|
      if @post429.save
        format.html { redirect_to(@post429, :notice => 'Post429 was successfully created.') }
        format.xml  { render :xml => @post429, :status => :created, :location => @post429 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post429.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post429s/1
  # PUT /post429s/1.xml
  def update
    @post429 = Post429.find(params[:id])

    respond_to do |format|
      if @post429.update_attributes(params[:post429])
        format.html { redirect_to(@post429, :notice => 'Post429 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post429.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post429s/1
  # DELETE /post429s/1.xml
  def destroy
    @post429 = Post429.find(params[:id])
    @post429.destroy

    respond_to do |format|
      format.html { redirect_to(post429s_url) }
      format.xml  { head :ok }
    end
  end
end
