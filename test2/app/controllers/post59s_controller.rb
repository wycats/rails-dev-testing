class Post59sController < ApplicationController
  # GET /post59s
  # GET /post59s.xml
  def index
    @post59s = Post59.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post59s }
    end
  end

  # GET /post59s/1
  # GET /post59s/1.xml
  def show
    @post59 = Post59.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post59 }
    end
  end

  # GET /post59s/new
  # GET /post59s/new.xml
  def new
    @post59 = Post59.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post59 }
    end
  end

  # GET /post59s/1/edit
  def edit
    @post59 = Post59.find(params[:id])
  end

  # POST /post59s
  # POST /post59s.xml
  def create
    @post59 = Post59.new(params[:post59])

    respond_to do |format|
      if @post59.save
        format.html { redirect_to(@post59, :notice => 'Post59 was successfully created.') }
        format.xml  { render :xml => @post59, :status => :created, :location => @post59 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post59.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post59s/1
  # PUT /post59s/1.xml
  def update
    @post59 = Post59.find(params[:id])

    respond_to do |format|
      if @post59.update_attributes(params[:post59])
        format.html { redirect_to(@post59, :notice => 'Post59 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post59.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post59s/1
  # DELETE /post59s/1.xml
  def destroy
    @post59 = Post59.find(params[:id])
    @post59.destroy

    respond_to do |format|
      format.html { redirect_to(post59s_url) }
      format.xml  { head :ok }
    end
  end
end
