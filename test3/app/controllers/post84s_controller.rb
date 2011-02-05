class Post84sController < ApplicationController
  # GET /post84s
  # GET /post84s.xml
  def index
    @post84s = Post84.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post84s }
    end
  end

  # GET /post84s/1
  # GET /post84s/1.xml
  def show
    @post84 = Post84.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post84 }
    end
  end

  # GET /post84s/new
  # GET /post84s/new.xml
  def new
    @post84 = Post84.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post84 }
    end
  end

  # GET /post84s/1/edit
  def edit
    @post84 = Post84.find(params[:id])
  end

  # POST /post84s
  # POST /post84s.xml
  def create
    @post84 = Post84.new(params[:post84])

    respond_to do |format|
      if @post84.save
        format.html { redirect_to(@post84, :notice => 'Post84 was successfully created.') }
        format.xml  { render :xml => @post84, :status => :created, :location => @post84 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post84.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post84s/1
  # PUT /post84s/1.xml
  def update
    @post84 = Post84.find(params[:id])

    respond_to do |format|
      if @post84.update_attributes(params[:post84])
        format.html { redirect_to(@post84, :notice => 'Post84 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post84.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post84s/1
  # DELETE /post84s/1.xml
  def destroy
    @post84 = Post84.find(params[:id])
    @post84.destroy

    respond_to do |format|
      format.html { redirect_to(post84s_url) }
      format.xml  { head :ok }
    end
  end
end
