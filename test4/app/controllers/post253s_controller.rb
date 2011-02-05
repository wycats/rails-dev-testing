class Post253sController < ApplicationController
  # GET /post253s
  # GET /post253s.xml
  def index
    @post253s = Post253.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post253s }
    end
  end

  # GET /post253s/1
  # GET /post253s/1.xml
  def show
    @post253 = Post253.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post253 }
    end
  end

  # GET /post253s/new
  # GET /post253s/new.xml
  def new
    @post253 = Post253.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post253 }
    end
  end

  # GET /post253s/1/edit
  def edit
    @post253 = Post253.find(params[:id])
  end

  # POST /post253s
  # POST /post253s.xml
  def create
    @post253 = Post253.new(params[:post253])

    respond_to do |format|
      if @post253.save
        format.html { redirect_to(@post253, :notice => 'Post253 was successfully created.') }
        format.xml  { render :xml => @post253, :status => :created, :location => @post253 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post253.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post253s/1
  # PUT /post253s/1.xml
  def update
    @post253 = Post253.find(params[:id])

    respond_to do |format|
      if @post253.update_attributes(params[:post253])
        format.html { redirect_to(@post253, :notice => 'Post253 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post253.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post253s/1
  # DELETE /post253s/1.xml
  def destroy
    @post253 = Post253.find(params[:id])
    @post253.destroy

    respond_to do |format|
      format.html { redirect_to(post253s_url) }
      format.xml  { head :ok }
    end
  end
end
