class Post353sController < ApplicationController
  # GET /post353s
  # GET /post353s.xml
  def index
    @post353s = Post353.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post353s }
    end
  end

  # GET /post353s/1
  # GET /post353s/1.xml
  def show
    @post353 = Post353.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post353 }
    end
  end

  # GET /post353s/new
  # GET /post353s/new.xml
  def new
    @post353 = Post353.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post353 }
    end
  end

  # GET /post353s/1/edit
  def edit
    @post353 = Post353.find(params[:id])
  end

  # POST /post353s
  # POST /post353s.xml
  def create
    @post353 = Post353.new(params[:post353])

    respond_to do |format|
      if @post353.save
        format.html { redirect_to(@post353, :notice => 'Post353 was successfully created.') }
        format.xml  { render :xml => @post353, :status => :created, :location => @post353 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post353.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post353s/1
  # PUT /post353s/1.xml
  def update
    @post353 = Post353.find(params[:id])

    respond_to do |format|
      if @post353.update_attributes(params[:post353])
        format.html { redirect_to(@post353, :notice => 'Post353 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post353.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post353s/1
  # DELETE /post353s/1.xml
  def destroy
    @post353 = Post353.find(params[:id])
    @post353.destroy

    respond_to do |format|
      format.html { redirect_to(post353s_url) }
      format.xml  { head :ok }
    end
  end
end
