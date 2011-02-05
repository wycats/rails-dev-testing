class Post19sController < ApplicationController
  # GET /post19s
  # GET /post19s.xml
  def index
    @post19s = Post19.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post19s }
    end
  end

  # GET /post19s/1
  # GET /post19s/1.xml
  def show
    @post19 = Post19.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post19 }
    end
  end

  # GET /post19s/new
  # GET /post19s/new.xml
  def new
    @post19 = Post19.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post19 }
    end
  end

  # GET /post19s/1/edit
  def edit
    @post19 = Post19.find(params[:id])
  end

  # POST /post19s
  # POST /post19s.xml
  def create
    @post19 = Post19.new(params[:post19])

    respond_to do |format|
      if @post19.save
        format.html { redirect_to(@post19, :notice => 'Post19 was successfully created.') }
        format.xml  { render :xml => @post19, :status => :created, :location => @post19 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post19.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post19s/1
  # PUT /post19s/1.xml
  def update
    @post19 = Post19.find(params[:id])

    respond_to do |format|
      if @post19.update_attributes(params[:post19])
        format.html { redirect_to(@post19, :notice => 'Post19 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post19.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post19s/1
  # DELETE /post19s/1.xml
  def destroy
    @post19 = Post19.find(params[:id])
    @post19.destroy

    respond_to do |format|
      format.html { redirect_to(post19s_url) }
      format.xml  { head :ok }
    end
  end
end
