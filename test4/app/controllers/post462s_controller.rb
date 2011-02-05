class Post462sController < ApplicationController
  # GET /post462s
  # GET /post462s.xml
  def index
    @post462s = Post462.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post462s }
    end
  end

  # GET /post462s/1
  # GET /post462s/1.xml
  def show
    @post462 = Post462.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post462 }
    end
  end

  # GET /post462s/new
  # GET /post462s/new.xml
  def new
    @post462 = Post462.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post462 }
    end
  end

  # GET /post462s/1/edit
  def edit
    @post462 = Post462.find(params[:id])
  end

  # POST /post462s
  # POST /post462s.xml
  def create
    @post462 = Post462.new(params[:post462])

    respond_to do |format|
      if @post462.save
        format.html { redirect_to(@post462, :notice => 'Post462 was successfully created.') }
        format.xml  { render :xml => @post462, :status => :created, :location => @post462 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post462.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post462s/1
  # PUT /post462s/1.xml
  def update
    @post462 = Post462.find(params[:id])

    respond_to do |format|
      if @post462.update_attributes(params[:post462])
        format.html { redirect_to(@post462, :notice => 'Post462 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post462.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post462s/1
  # DELETE /post462s/1.xml
  def destroy
    @post462 = Post462.find(params[:id])
    @post462.destroy

    respond_to do |format|
      format.html { redirect_to(post462s_url) }
      format.xml  { head :ok }
    end
  end
end
