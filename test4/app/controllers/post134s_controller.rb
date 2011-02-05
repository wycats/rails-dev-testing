class Post134sController < ApplicationController
  # GET /post134s
  # GET /post134s.xml
  def index
    @post134s = Post134.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post134s }
    end
  end

  # GET /post134s/1
  # GET /post134s/1.xml
  def show
    @post134 = Post134.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post134 }
    end
  end

  # GET /post134s/new
  # GET /post134s/new.xml
  def new
    @post134 = Post134.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post134 }
    end
  end

  # GET /post134s/1/edit
  def edit
    @post134 = Post134.find(params[:id])
  end

  # POST /post134s
  # POST /post134s.xml
  def create
    @post134 = Post134.new(params[:post134])

    respond_to do |format|
      if @post134.save
        format.html { redirect_to(@post134, :notice => 'Post134 was successfully created.') }
        format.xml  { render :xml => @post134, :status => :created, :location => @post134 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post134.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post134s/1
  # PUT /post134s/1.xml
  def update
    @post134 = Post134.find(params[:id])

    respond_to do |format|
      if @post134.update_attributes(params[:post134])
        format.html { redirect_to(@post134, :notice => 'Post134 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post134.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post134s/1
  # DELETE /post134s/1.xml
  def destroy
    @post134 = Post134.find(params[:id])
    @post134.destroy

    respond_to do |format|
      format.html { redirect_to(post134s_url) }
      format.xml  { head :ok }
    end
  end
end
