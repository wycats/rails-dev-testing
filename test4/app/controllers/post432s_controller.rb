class Post432sController < ApplicationController
  # GET /post432s
  # GET /post432s.xml
  def index
    @post432s = Post432.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post432s }
    end
  end

  # GET /post432s/1
  # GET /post432s/1.xml
  def show
    @post432 = Post432.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post432 }
    end
  end

  # GET /post432s/new
  # GET /post432s/new.xml
  def new
    @post432 = Post432.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post432 }
    end
  end

  # GET /post432s/1/edit
  def edit
    @post432 = Post432.find(params[:id])
  end

  # POST /post432s
  # POST /post432s.xml
  def create
    @post432 = Post432.new(params[:post432])

    respond_to do |format|
      if @post432.save
        format.html { redirect_to(@post432, :notice => 'Post432 was successfully created.') }
        format.xml  { render :xml => @post432, :status => :created, :location => @post432 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post432.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post432s/1
  # PUT /post432s/1.xml
  def update
    @post432 = Post432.find(params[:id])

    respond_to do |format|
      if @post432.update_attributes(params[:post432])
        format.html { redirect_to(@post432, :notice => 'Post432 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post432.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post432s/1
  # DELETE /post432s/1.xml
  def destroy
    @post432 = Post432.find(params[:id])
    @post432.destroy

    respond_to do |format|
      format.html { redirect_to(post432s_url) }
      format.xml  { head :ok }
    end
  end
end
