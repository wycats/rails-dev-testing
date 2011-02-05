class Post365sController < ApplicationController
  # GET /post365s
  # GET /post365s.xml
  def index
    @post365s = Post365.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post365s }
    end
  end

  # GET /post365s/1
  # GET /post365s/1.xml
  def show
    @post365 = Post365.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post365 }
    end
  end

  # GET /post365s/new
  # GET /post365s/new.xml
  def new
    @post365 = Post365.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post365 }
    end
  end

  # GET /post365s/1/edit
  def edit
    @post365 = Post365.find(params[:id])
  end

  # POST /post365s
  # POST /post365s.xml
  def create
    @post365 = Post365.new(params[:post365])

    respond_to do |format|
      if @post365.save
        format.html { redirect_to(@post365, :notice => 'Post365 was successfully created.') }
        format.xml  { render :xml => @post365, :status => :created, :location => @post365 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post365.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post365s/1
  # PUT /post365s/1.xml
  def update
    @post365 = Post365.find(params[:id])

    respond_to do |format|
      if @post365.update_attributes(params[:post365])
        format.html { redirect_to(@post365, :notice => 'Post365 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post365.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post365s/1
  # DELETE /post365s/1.xml
  def destroy
    @post365 = Post365.find(params[:id])
    @post365.destroy

    respond_to do |format|
      format.html { redirect_to(post365s_url) }
      format.xml  { head :ok }
    end
  end
end
