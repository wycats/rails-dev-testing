class Post146sController < ApplicationController
  # GET /post146s
  # GET /post146s.xml
  def index
    @post146s = Post146.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post146s }
    end
  end

  # GET /post146s/1
  # GET /post146s/1.xml
  def show
    @post146 = Post146.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post146 }
    end
  end

  # GET /post146s/new
  # GET /post146s/new.xml
  def new
    @post146 = Post146.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post146 }
    end
  end

  # GET /post146s/1/edit
  def edit
    @post146 = Post146.find(params[:id])
  end

  # POST /post146s
  # POST /post146s.xml
  def create
    @post146 = Post146.new(params[:post146])

    respond_to do |format|
      if @post146.save
        format.html { redirect_to(@post146, :notice => 'Post146 was successfully created.') }
        format.xml  { render :xml => @post146, :status => :created, :location => @post146 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post146.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post146s/1
  # PUT /post146s/1.xml
  def update
    @post146 = Post146.find(params[:id])

    respond_to do |format|
      if @post146.update_attributes(params[:post146])
        format.html { redirect_to(@post146, :notice => 'Post146 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post146.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post146s/1
  # DELETE /post146s/1.xml
  def destroy
    @post146 = Post146.find(params[:id])
    @post146.destroy

    respond_to do |format|
      format.html { redirect_to(post146s_url) }
      format.xml  { head :ok }
    end
  end
end
