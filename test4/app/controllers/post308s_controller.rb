class Post308sController < ApplicationController
  # GET /post308s
  # GET /post308s.xml
  def index
    @post308s = Post308.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post308s }
    end
  end

  # GET /post308s/1
  # GET /post308s/1.xml
  def show
    @post308 = Post308.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post308 }
    end
  end

  # GET /post308s/new
  # GET /post308s/new.xml
  def new
    @post308 = Post308.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post308 }
    end
  end

  # GET /post308s/1/edit
  def edit
    @post308 = Post308.find(params[:id])
  end

  # POST /post308s
  # POST /post308s.xml
  def create
    @post308 = Post308.new(params[:post308])

    respond_to do |format|
      if @post308.save
        format.html { redirect_to(@post308, :notice => 'Post308 was successfully created.') }
        format.xml  { render :xml => @post308, :status => :created, :location => @post308 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post308.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post308s/1
  # PUT /post308s/1.xml
  def update
    @post308 = Post308.find(params[:id])

    respond_to do |format|
      if @post308.update_attributes(params[:post308])
        format.html { redirect_to(@post308, :notice => 'Post308 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post308.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post308s/1
  # DELETE /post308s/1.xml
  def destroy
    @post308 = Post308.find(params[:id])
    @post308.destroy

    respond_to do |format|
      format.html { redirect_to(post308s_url) }
      format.xml  { head :ok }
    end
  end
end
