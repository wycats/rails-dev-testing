class Post422sController < ApplicationController
  # GET /post422s
  # GET /post422s.xml
  def index
    @post422s = Post422.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post422s }
    end
  end

  # GET /post422s/1
  # GET /post422s/1.xml
  def show
    @post422 = Post422.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post422 }
    end
  end

  # GET /post422s/new
  # GET /post422s/new.xml
  def new
    @post422 = Post422.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post422 }
    end
  end

  # GET /post422s/1/edit
  def edit
    @post422 = Post422.find(params[:id])
  end

  # POST /post422s
  # POST /post422s.xml
  def create
    @post422 = Post422.new(params[:post422])

    respond_to do |format|
      if @post422.save
        format.html { redirect_to(@post422, :notice => 'Post422 was successfully created.') }
        format.xml  { render :xml => @post422, :status => :created, :location => @post422 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post422.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post422s/1
  # PUT /post422s/1.xml
  def update
    @post422 = Post422.find(params[:id])

    respond_to do |format|
      if @post422.update_attributes(params[:post422])
        format.html { redirect_to(@post422, :notice => 'Post422 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post422.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post422s/1
  # DELETE /post422s/1.xml
  def destroy
    @post422 = Post422.find(params[:id])
    @post422.destroy

    respond_to do |format|
      format.html { redirect_to(post422s_url) }
      format.xml  { head :ok }
    end
  end
end
