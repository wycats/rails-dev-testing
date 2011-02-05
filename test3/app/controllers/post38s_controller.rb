class Post38sController < ApplicationController
  # GET /post38s
  # GET /post38s.xml
  def index
    @post38s = Post38.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post38s }
    end
  end

  # GET /post38s/1
  # GET /post38s/1.xml
  def show
    @post38 = Post38.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post38 }
    end
  end

  # GET /post38s/new
  # GET /post38s/new.xml
  def new
    @post38 = Post38.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post38 }
    end
  end

  # GET /post38s/1/edit
  def edit
    @post38 = Post38.find(params[:id])
  end

  # POST /post38s
  # POST /post38s.xml
  def create
    @post38 = Post38.new(params[:post38])

    respond_to do |format|
      if @post38.save
        format.html { redirect_to(@post38, :notice => 'Post38 was successfully created.') }
        format.xml  { render :xml => @post38, :status => :created, :location => @post38 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post38.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post38s/1
  # PUT /post38s/1.xml
  def update
    @post38 = Post38.find(params[:id])

    respond_to do |format|
      if @post38.update_attributes(params[:post38])
        format.html { redirect_to(@post38, :notice => 'Post38 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post38.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post38s/1
  # DELETE /post38s/1.xml
  def destroy
    @post38 = Post38.find(params[:id])
    @post38.destroy

    respond_to do |format|
      format.html { redirect_to(post38s_url) }
      format.xml  { head :ok }
    end
  end
end
