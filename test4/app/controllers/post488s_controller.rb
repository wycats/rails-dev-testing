class Post488sController < ApplicationController
  # GET /post488s
  # GET /post488s.xml
  def index
    @post488s = Post488.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post488s }
    end
  end

  # GET /post488s/1
  # GET /post488s/1.xml
  def show
    @post488 = Post488.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post488 }
    end
  end

  # GET /post488s/new
  # GET /post488s/new.xml
  def new
    @post488 = Post488.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post488 }
    end
  end

  # GET /post488s/1/edit
  def edit
    @post488 = Post488.find(params[:id])
  end

  # POST /post488s
  # POST /post488s.xml
  def create
    @post488 = Post488.new(params[:post488])

    respond_to do |format|
      if @post488.save
        format.html { redirect_to(@post488, :notice => 'Post488 was successfully created.') }
        format.xml  { render :xml => @post488, :status => :created, :location => @post488 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post488.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post488s/1
  # PUT /post488s/1.xml
  def update
    @post488 = Post488.find(params[:id])

    respond_to do |format|
      if @post488.update_attributes(params[:post488])
        format.html { redirect_to(@post488, :notice => 'Post488 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post488.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post488s/1
  # DELETE /post488s/1.xml
  def destroy
    @post488 = Post488.find(params[:id])
    @post488.destroy

    respond_to do |format|
      format.html { redirect_to(post488s_url) }
      format.xml  { head :ok }
    end
  end
end
