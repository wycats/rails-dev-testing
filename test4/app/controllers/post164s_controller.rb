class Post164sController < ApplicationController
  # GET /post164s
  # GET /post164s.xml
  def index
    @post164s = Post164.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post164s }
    end
  end

  # GET /post164s/1
  # GET /post164s/1.xml
  def show
    @post164 = Post164.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post164 }
    end
  end

  # GET /post164s/new
  # GET /post164s/new.xml
  def new
    @post164 = Post164.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post164 }
    end
  end

  # GET /post164s/1/edit
  def edit
    @post164 = Post164.find(params[:id])
  end

  # POST /post164s
  # POST /post164s.xml
  def create
    @post164 = Post164.new(params[:post164])

    respond_to do |format|
      if @post164.save
        format.html { redirect_to(@post164, :notice => 'Post164 was successfully created.') }
        format.xml  { render :xml => @post164, :status => :created, :location => @post164 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post164.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post164s/1
  # PUT /post164s/1.xml
  def update
    @post164 = Post164.find(params[:id])

    respond_to do |format|
      if @post164.update_attributes(params[:post164])
        format.html { redirect_to(@post164, :notice => 'Post164 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post164.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post164s/1
  # DELETE /post164s/1.xml
  def destroy
    @post164 = Post164.find(params[:id])
    @post164.destroy

    respond_to do |format|
      format.html { redirect_to(post164s_url) }
      format.xml  { head :ok }
    end
  end
end
