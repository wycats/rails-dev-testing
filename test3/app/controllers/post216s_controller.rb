class Post216sController < ApplicationController
  # GET /post216s
  # GET /post216s.xml
  def index
    @post216s = Post216.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post216s }
    end
  end

  # GET /post216s/1
  # GET /post216s/1.xml
  def show
    @post216 = Post216.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post216 }
    end
  end

  # GET /post216s/new
  # GET /post216s/new.xml
  def new
    @post216 = Post216.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post216 }
    end
  end

  # GET /post216s/1/edit
  def edit
    @post216 = Post216.find(params[:id])
  end

  # POST /post216s
  # POST /post216s.xml
  def create
    @post216 = Post216.new(params[:post216])

    respond_to do |format|
      if @post216.save
        format.html { redirect_to(@post216, :notice => 'Post216 was successfully created.') }
        format.xml  { render :xml => @post216, :status => :created, :location => @post216 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post216.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post216s/1
  # PUT /post216s/1.xml
  def update
    @post216 = Post216.find(params[:id])

    respond_to do |format|
      if @post216.update_attributes(params[:post216])
        format.html { redirect_to(@post216, :notice => 'Post216 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post216.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post216s/1
  # DELETE /post216s/1.xml
  def destroy
    @post216 = Post216.find(params[:id])
    @post216.destroy

    respond_to do |format|
      format.html { redirect_to(post216s_url) }
      format.xml  { head :ok }
    end
  end
end
