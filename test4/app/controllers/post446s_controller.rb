class Post446sController < ApplicationController
  # GET /post446s
  # GET /post446s.xml
  def index
    @post446s = Post446.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post446s }
    end
  end

  # GET /post446s/1
  # GET /post446s/1.xml
  def show
    @post446 = Post446.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post446 }
    end
  end

  # GET /post446s/new
  # GET /post446s/new.xml
  def new
    @post446 = Post446.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post446 }
    end
  end

  # GET /post446s/1/edit
  def edit
    @post446 = Post446.find(params[:id])
  end

  # POST /post446s
  # POST /post446s.xml
  def create
    @post446 = Post446.new(params[:post446])

    respond_to do |format|
      if @post446.save
        format.html { redirect_to(@post446, :notice => 'Post446 was successfully created.') }
        format.xml  { render :xml => @post446, :status => :created, :location => @post446 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post446.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post446s/1
  # PUT /post446s/1.xml
  def update
    @post446 = Post446.find(params[:id])

    respond_to do |format|
      if @post446.update_attributes(params[:post446])
        format.html { redirect_to(@post446, :notice => 'Post446 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post446.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post446s/1
  # DELETE /post446s/1.xml
  def destroy
    @post446 = Post446.find(params[:id])
    @post446.destroy

    respond_to do |format|
      format.html { redirect_to(post446s_url) }
      format.xml  { head :ok }
    end
  end
end
