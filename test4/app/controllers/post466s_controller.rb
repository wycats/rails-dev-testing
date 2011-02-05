class Post466sController < ApplicationController
  # GET /post466s
  # GET /post466s.xml
  def index
    @post466s = Post466.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post466s }
    end
  end

  # GET /post466s/1
  # GET /post466s/1.xml
  def show
    @post466 = Post466.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post466 }
    end
  end

  # GET /post466s/new
  # GET /post466s/new.xml
  def new
    @post466 = Post466.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post466 }
    end
  end

  # GET /post466s/1/edit
  def edit
    @post466 = Post466.find(params[:id])
  end

  # POST /post466s
  # POST /post466s.xml
  def create
    @post466 = Post466.new(params[:post466])

    respond_to do |format|
      if @post466.save
        format.html { redirect_to(@post466, :notice => 'Post466 was successfully created.') }
        format.xml  { render :xml => @post466, :status => :created, :location => @post466 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post466.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post466s/1
  # PUT /post466s/1.xml
  def update
    @post466 = Post466.find(params[:id])

    respond_to do |format|
      if @post466.update_attributes(params[:post466])
        format.html { redirect_to(@post466, :notice => 'Post466 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post466.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post466s/1
  # DELETE /post466s/1.xml
  def destroy
    @post466 = Post466.find(params[:id])
    @post466.destroy

    respond_to do |format|
      format.html { redirect_to(post466s_url) }
      format.xml  { head :ok }
    end
  end
end
